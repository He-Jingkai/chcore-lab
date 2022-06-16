# OS Lab3 实验报告
### 练习 1: 内核从完成必要的初始化到用户态程序的过程是怎么样的？尝试描述一下调用关系。
在Linux中:
 - 内核完成初始化后, 创建并运行idle进程(`pid = 0`)
 - idle进程通过`kernel_thread`创建init进程(`pid = 1`), init进程在kernel态初始化后通过`execve`运行可执行文件init(`kernel_init`函数), init进程之后将完成设备驱动程序的初始化等工作
 - 之后init进程从内核态转入用户态, 使用`fork`产生其他用户态进程

在本lab对应的chcore中:
 - 内核完成初始化后执行`main`函数, `main`函数对内核做进一步初始化(如打开MMU和配置中断表)后调用`create_root_thread`创建第一个用户态线程, 之后使用`switch_context`将vmspace切换为该用户态线程的vmspace, 并使用`eret_to_thread`将控制权转交到该线程(主要是将sp设置为该用户态线程的`thread_ctx`的`arch_exec_cont_t`的地址, 之后通过`exception_exit`将存储在内存中的用户态线程各寄存器状态载入寄存器中)

### 练习 2: 在 `kernel/object/cap_group.c` 中完善 `cap_group_init`、`sys_create_cap_group`、`create_root_cap_group` 函数。在完成填写之后，你可以通过 Cap create pretest 测试点

`cap_group_init`思路: 调用函数初始化`cap_group`的各成员, 并设置`cap_group`的`pid`, `thread_cnt`设为0
````c
int cap_group_init(struct cap_group *cap_group, unsigned int size, u64 pid) {
  struct slot_table *slot_table = &cap_group->slot_table;
  /* LAB 3 TODO BEGIN */
  slot_table_init(slot_table, size);
  init_list_head(&cap_group->thread_list);
  cap_group->pid = pid;
  cap_group->thread_cnt = 0;
  /* LAB 3 TODO END */
  return 0;
}
````

`sys_create_cap_group`思路: 根据代码上下文逻辑, 第一处填空需要alloc `new_cap_group`(因为下文检查`new_cap_group`非空), 第二处填空需要初始化`new_cap_group`, 因为下文`cap_alloc`需要使用初始化好的`new_cap_group`
````c
/* LAB 3 TODO BEGIN */
  /* cap current cap_group */
  new_cap_group = obj_alloc(TYPE_CAP_GROUP, sizeof(struct cap_group));
  /* LAB 3 TODO END */

  if (!new_cap_group) {
    r = -ENOMEM;
    goto out_fail;
  }
  /* LAB 3 TODO BEGIN */
  cap_group_init(new_cap_group, BASE_OBJECT_NUM, pid);
  /* LAB 3 TODO END */
````

`create_root_cap_group`思路: 仿照`sys_create_cap_group`代码, 区别是`create_root_cap_group`创建的是第一个线程, 因此无法使用`current_thread`和`current_cap_group`, 也就无法通过`cap_copy`填充`cap_group->slot_table`的第0位, 因此, 需要创建新的`object_slot`来填充, 因为`object_slot`需要`object`的地址来填充其成员变量, 我们没有调用`obj_alloc`alloc`cap_group`而是将其逻辑完全复制到代码中(除了`refcount`设为1外和`obj_alloc`完全相同), 除此之外, `sys_create_cap_group`和`create_root_cap_group`相同.

````c
struct cap_group *create_root_cap_group(char *name, size_t name_len) {
  struct cap_group *cap_group;
  struct vmspace *vmspace;
  int slot_id;
  /* LAB 3 TODO BEGIN */
  // cap_group = obj_alloc(TYPE_CAP_GROUP, sizeof(struct cap_group));
  struct object *object;
  u64 total_size = sizeof(*object) + sizeof(*cap_group);

  object = kzalloc(total_size);
  object->type = TYPE_CAP_GROUP;
  object->size = sizeof(*cap_group);
  object->refcount = 1;
  init_list_head(&object->copies_head);

  cap_group = object->opaque;
  cap_group_init(cap_group, BASE_OBJECT_NUM, ROOT_PID);
  /* LAB 3 TODO END */
  BUG_ON(!cap_group);
  /* LAB 3 TODO BEGIN */
  slot_id = alloc_slot_id(cap_group);
  /* LAB 3 TODO END */
  BUG_ON(slot_id != CAP_GROUP_OBJ_ID);
  /* LAB 3 TODO BEGIN */
  struct  *obj_slot = kmalloc(sizeof(struct object_slot));
  obj_slot->slot_id = slot_id;
  obj_slot->cap_group = cap_group;
  obj_slot->isvalid = 1;
  obj_slot->object = object;
  init_list_head(&obj_slot->copies);
  cap_group->slot_table.slots[slot_id] = obj_slot;

  vmspace = obj_alloc(TYPE_VMSPACE, sizeof(struct vmspace));
  /* LAB 3 TODO END */
  BUG_ON(!vmspace);

  /* fixed PCID 1 for root process, PCID 0 is not used. */
  /* LAB 3 TODO BEGIN */
  vmspace->pcid = ROOT_PCID;
  vmspace_init(vmspace);
  slot_id = cap_alloc(cap_group, vmspace, 0);
  /* LAB 3 TODO END */
  下略
}
````
### 练习 3: 在 `kernel/object/thread.c` 中完成 `load_binary` 函数，将用户程序 ELF 加载到刚刚创建的进程地址空间中。
思路: 首先创建相应的pmo并填充到`pmo_cap`中, `seg_map_sz`为了方便对其将这段内存的上下界分别向上和向下扩展到page的终止和起始, 使得每段内存占用整数(>0)个page, 之后使用memcpy将bin文件中的这段内容load到对应的内存位置, 并使用`vmspace_map_range`在vmspace中创建映射(为了避免之前遗留的内存初始值的影响, 我们使用`memset`将其置为0)
````c
if (elf->p_headers[i].p_type == PT_LOAD) {
      seg_sz = elf->p_headers[i].p_memsz;
      p_vaddr = elf->p_headers[i].p_vaddr;
      /* LAB 3 TODO BEGIN */
      seg_map_sz = ROUND_UP((p_vaddr + seg_sz), PAGE_SIZE) -
                   ROUND_DOWN(p_vaddr, PAGE_SIZE);
      pmo_cap[i] = create_pmo(seg_map_sz, PMO_DATA, cap_group, &pmo);
      memset((void *)phys_to_virt(pmo->start), 0, pmo->size);
      memcpy((void *)phys_to_virt(pmo->start) + (OFFSET_MASK & p_vaddr),
             bin + elf->p_headers[i].p_offset, elf->p_headers[i].p_filesz);

      flags = PFLAGS2VMRFLAGS(elf->p_headers[i].p_flags);
      ret = vmspace_map_range(vmspace, ROUND_DOWN(p_vaddr, PAGE_SIZE),
                              seg_map_sz, flags, pmo);
      /* LAB 3 TODO END */
      BUG_ON(ret != 0);
    }
````
### 练习 4: 按照前文所述的表格填写 `kernel/arch/aarch64/irq/irq_entry.S` 中的异常向量表，并且增加对应的函数跳转操作。
按照`kernel/arch/aarch64/irq/irq_entry.h`中的define填充异常向量表即可, 对应宏的值即为对应异常在向量表中的索引, 也可以参照给出的向量表内容注释

对于不需要实现的异常处理, 跳转到`unexpected_handler`, 对于`sync_el1h`的异常处理, 在填空中跳转到`handle_entry_c`

### 练习 5: 填写 `kernel/arch/aarch64/irq/pgfault.c` 中的 `do_page_fault`，需要将缺页异常转发给 `handle_trans_fault` 函数
直接转发即可, 参数为`current_thread->vmspace`和发生page fualt的虚拟地址(`fault_addr`)
````c
/* LAB 3 TODO BEGIN */
ret = handle_trans_fault(current_thread->vmspace, fault_addr);
/* LAB 3 TODO END */
````

### 练习 6: 填写 `kernel/mm/pgfault_handler.c` 中的 `handle_trans_fault`，实现 `PMO_SHM` 和 `PMO_ANONYM` 的按需物理页分配
首先调用`get_page_from_pmo`确定该va是否被分配pa, 若尚未分配(`pa == 0`), 则调用`get_pages`分配page, 为避免初始值影响将其置零, 并使用`commit_page_to_pmo`将其添加到pmo中, 之后使用`map_range_in_pgtbl`将va到pa的映射添加到页表中.

若已经分配(`pa != 0`), 则在页表中将其重新映射即可.
````c
case PMO_SHM: {
      略
      /* LAB 3 TODO BEGIN */
      pa = get_page_from_pmo(pmo, index);
      /* LAB 3 TODO END */
      if (pa == 0) {
        /* LAB 3 TODO BEGIN */
        void *page = get_pages(0);
        pa = virt_to_phys(page);
        memset((void *)phys_to_virt(pa), 0, PAGE_SIZE);
        commit_page_to_pmo(pmo, index, pa);
        map_range_in_pgtbl(vmspace->pgtbl, fault_addr, pa, PAGE_SIZE, perm);
        /* LAB 3 TODO END */
      } else {
        map_range_in_pgtbl(vmspace->pgtbl, fault_addr, pa, PAGE_SIZE, perm);
      }
````

### 练习 7: 按照前文所述的表格填写 `kernel/arch/aarch64/irq/irq_entry.S` 中的 `exception_enter` 与 `exception_exit`，实现上下文保存的功能
`exception_enter`将全部寄存器保存到内存中, `exception_exit`将寄存器的值从对应内存位置加载进来, `exception_enter`首先向下扩展栈, 之后逐个保存寄存器的值到内存中(使用````stp````(store pair)指令), `exception_exit`将寄存器的值从对应内存位置加载进来后向上恢复栈(使用`ldp`(load pair)指令), 需要注意`x21`、`x22`、`x23`三个寄存器首先需要作为临时寄存器恢复`sp_el0`、`elr_el1`和`spsr_el1`之后才恢复初始值.

### 练习 8: 填写 `kernel/syscall/syscall.c` 中的 `sys_putc`、`sys_getc`，`kernel/object/thread.c` 中的 `sys_thread_exit`，`libchcore/include/chcore/internal/raw_syscall.h` 中的 `__chcore_sys_putc`、`__chcore_sys_getc`、`__chcore_sys_thread_exit`，以实现 `putc`、`getc`、`thread_exit` 三个系统调用

`sys_putc`和`sys_getc`直接调用`uart_send`和`nb_uart_recv`函数即可
````c
void sys_putc(char ch) {uart_send((u32)ch);}
u32 sys_getc(void) {return nb_uart_recv();}
````
`sys_thread_exit`将本线程的`state`设为`TS_EXIT`并将`current_thread`设为`NULL`使系统不会再调度到该线程, 但`free(current_thread)`会导致系统异常, 因为这个线程的内存可能还会被访问(或与其他线程共用).
````c
void sys_thread_exit(void) {
#ifdef CHCORE_LAB3_TEST
  printk("\nBack to kernel.\n");
#endif
  /* LAB 3 TODO BEGIN */
  current_thread->thread_ctx->state = TS_EXIT;
  // free(current_thread);
  current_thread = NULL;
  下略
}
````

`__chcore_sys_putc`、`__chcore_sys_getc`、`__chcore_sys_thread_exit`直接根据参数数目调用`__chcore_syscall1`, `__chcore_syscall0`, `__chcore_syscall0`即可

### 挑战 9: 截止到现在由于没有磁盘，因此我们采用一部分内存模拟磁盘。内存页是可以换入换出的，请设计一套换页策略（如 LRU 等），并在 `kernel/mm/pgfault_handler.c` 中的 `handle_trans_fault` 实现你的换页方法。
思路:
 - (1)首先预留一部分内存来模拟swapfile, 为这些swap块分配唯一的非0标识符(可以用这部分内存页的物理地址来作为这些内存页的标识), 并使用如下数据结构保存swap块的描述符, 所有swap块组成链表
````
struct swapBlockDescriptor{
  u64 paddr;
  byte used;
  u64 size;
}
````
 - (2)在分配内存页时记录所有buddy system分配出去的内存的索引, 并建立物理地址到虚拟地址的*反向索引*, 使用如下数据结构, 使用链表保存对应的页表项来处理多个进程的虚拟地址共享物理内存页的情况, 全部分配出去的内存页的索引组成一个链表
````
struct pageIndex{
  u64 paddr;
  u64 size;
  pte_node* ptes;
}
````
 - (3)MMU访问内存页时将对应页表项的Access位设置为1
 - (4)当内存中`getPages()`失败时选择内存页swap
 - (5)使用时钟算法选择被替换出的内存页, 在选择要替换出去的内存页时, 从头到尾访问链表在回到开头(即将链表视为一个首尾相接的环), 如果对应的pte(s)的Aceess位为0则将其作为被替换的页, 否则将其设置为0, 得到即将被swap的page
 - (6)选择一个空闲的(`used == 0`)swap块, 将其标记为已用(`used == 1`)
 - (7)将选择的要被替换的内存页对应的PTE的Present位设置为0, 这样访问时就会引发Page fualt, 将之前PTE中保存物理地址的位置改为保存swap块对应的标识符
 - (8)在访问一个内存页时, 如果对应PTE的Present位为0则会引发page fualt(否则MMU正常访问), 若PTE不全为0则表明对应的page被swap, 若PTE全为0表明尚未分配物理页
 - (9)出现swap引发的page fualt时, 使用PTE中记录的swap块的标识符将对应物理页数据读出, 使用buddy system重新分配一块物理页, 将内容写入物理页中并修改PTE(填入新分配的物理地址, Present位设为1), 之后返回
 - (10)为了kernel的正常运行, 选择被swap的物理页时只选取user space页表使用的物理页
