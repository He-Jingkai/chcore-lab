# lab4 实验报告

### 思考题 1: 阅读汇编代码`kernel/arch/aarch64/boot/raspi3/init/start.S`。说明ChCore是如何选定主CPU，并阻塞其他其他CPU的执行的。
 - 首先从`mpidr_el1`中取出CPUID放在`x8`寄存器中, 并和`0xFF`做and, 保留x8的最低8位
 - 如果`x8`为0(该核为0号CPU核)则跳转到`primary`函数
 - 否则(该核不是0号CPU核), CPU核最终在`wait_until_smp_enabled:`和`bne cbz x3, wait_until_smp_enabled`之间不断跳转直到对应核的`secondary_boot_flag`被置为非0(即`secondary_boot_flag[cpuid]`被改为非0值), 从而阻塞其他CPU执行
````c
BEGIN_FUNC(_start)
    /*MPIDR_EL1是多核标志寄存器,存储cpuid,mrs表示将其移动到x8寄存器*/
	mrs	x8, mpidr_el1
    /*将cpuid和0xFF做and, 保留x8的低8位*/
	and	x8, x8,	#0xFF
    /*cbz表示为0则跳转,如果x8为0则为0号CPU核,跳转到primary段,使第一个核进入初始化流程*/
	cbz	x8, primary

	wait_until_smp_enabled:
	/* CPU ID should be stored in x8 from the first line */
	mov	x1, #8
	mul	x2, x8, x1
	ldr	x1, =secondary_boot_flag
	add	x1, x1, x2
	ldr	x3, [x1]
	cbz	x3, wait_until_smp_enabled

	/* Set CPU id */
	mov	x0, x8
	bl 	secondary_init_c
  
    /*0号核进入初始化流程*/
primary:
    /*0号核的初始化流程*/
````
### 思考题2: 阅读汇编代码`kernel/arch/aarch64/boot/raspi3/init/start.S, init_c.c`以及`kernel/arch/aarch64/main.c`，解释用于阻塞其他CPU核心的`secondary_boot_flag`是物理地址还是虚拟地址？是如何传入函数`enable_smp_cores`中，又该如何赋值的（考虑虚拟地址/物理地址) ?

 - 是物理地址
 - `_start`中`primary`段CPU-0调用`init_c`, `init_c`调用`start_kernel`并传入`secondary_boot_flag`(即`start_kernel(secondary_boot_flag)`), `start_kernel`调用`main(paddr_t boot_flag)`并传入`boot_flag`(即`secondary_boot_flag`), `main`调用`enable_smp_cores(boot_flag)`将`secondary_boot_flag`传入`enable_smp_cores`
 - 首先根据物理地址取得其虚拟地址再对虚拟地址处赋值, 在`enable_smp_cores`中使用`phys_to_virt(boot_flag)`取得其虚拟地址
### 练习3：完善主CPU激活各个其他CPU的函数：`enable_smp_cores`和`kernel/arch/aarch64/main.c`中的`secondary_start`。请注意测试代码会要求各个其他CPU按序被依次激活。
`enable_smp_cores`第一处填空将`secondary_boot_flag[i]`设为非0(选择设为1)来使得`_start`中其他CPU核解除hang, 继续执行下面的代码; 第二处填空在`cpu_status[i] == cpu_hang`时死循环(即`while(cpu_status[i] == cpu_hang)`)来保证本CPU核被初始化完成之前不启动其他核的初始化;

`secondary_start`第一处填空设置`cpu_status[cpuid] = cpu_run`表明本CPU核已经完成初始化, 与`enable_smp_cores`的第二处填空对应; 第二处填空调用`timer_init()`初始化时钟, 为后面的抢占式调度做准备.
### 练习4：本练习分为以下几个步骤：
> 1. 请熟悉排号锁的基本算法，并在`kernel/arch/aarch64/sync/ticket.c`中完成`unlock`和`is_locked`的代码。
> 2. 在`kernel/arch/aarch64/sync/ticket.c`中实现`kernel_lock_init`、`lock_kernel`和`unlock_kernel`。
> 3. 在适当的位置调用`lock_kernel`。
> 4. 判断什么时候需要放锁，添加`unlock_kernel`。

`unlock`填空只需将`(lock->owner)++`表示锁的所有权转移到owner后的第一个等待者即可

`is_locked`填空只需根据`ret = lock->owner != lock->next`即可判断锁是否有被持有, 因为如果锁被持有则`lock->owner`小于`lock->next`, 如果锁未被持有则必没有等待者(也可以看作锁被尚未到来的`lock->next`持有), 此时	`lock->owner == lock->next`

`kernel_lock_init`、`lock_kernel`和`unlock_kernel`只需要分别对`big_kernel_lock`调用`lock_init`, `lock`和`unlock`即可, 其中`unlock`需要检查`big_kernel_lock`是否被上锁, 如果没有上锁则直接返回即可.

chcore在进入内核态时调用`lock_kernel`, 而进入kernel的情况有且仅有如下几种:
 - `kernel/arch/aarch64/main.c`中的`main`：主CPU在激活其他CPU之前需要首先获得了大内核锁
 - `kernel/arch/aarch64/main.c`中的`secondary_start`：在初始化完成之后且其他CPU返回用户态之前获取大内核锁, 在`sched()`之前添加
 - `kernel/arch/aarch64/irq/irq_entry.S`中的`el0_syscall`：在跳转到`syscall_table`中相应的`syscall`条目之前获取大内核锁, 在`el0_syscall`保存完寄存器后添加
 - `kernel/arch/aarch64/irq/irq_entry.c`中的`handle_entry_c`：在该异常处理函数的第一行获取大内核锁。因为在内核态下也可能会发生异常，所以如果异常是在内核中捕获的，则不应获取大内核锁, 在函数起始添加:
````c
if(type >= SYNC_EL0_64) lock_kernel();
````
 - `kernel/arch/aarch64/irq/irq_entry.c`中的`handle_irq`：在中断处理函数的第一行获取大内核锁。与`handle_entry_c`类似，如果是内核异常，则不应获取该锁, 在函数起始添加:
````c
if (type >= SYNC_EL0_64 || current_thread->thread_ctx->type == TYPE_IDLE)
    lock_kernel();
````

chcore在进入用户态时调用`unlock_kernel`, 而进入用户态有且仅有如下几种情况:
 - 处理完`el0`态的异常之后, 即在`sync_el0_64`和`el0_syscall`的`exception_exit`之前添加`bl unlock_kernel`
 - `__eret_to_thread`, 即在`__eret_to_thread`的`exception_exit`之前添加`bl unlock_kernel`
### 思考题5: 在`el0_syscall`调用`lock_kernel`时，在栈上保存了寄存器的值。这是为了避免调用`lock_kernel`时修改这些寄存器。在`unlock_kernel`时，是否需要将寄存器的值保存到栈中，试分析其原因
不需要, 调用`unlock_kernel`后`el0_syscall`即`exception_exit`, 不再需要使用几个寄存器的值, 因此不需要保存
### 思考题6: 为何`idle_threads`不会加入到等待队列中？请分析其原因？
`idle_threads`当且仅当当前CPU核等待队列为空时被执行, 其优先级最低, 如果加入等待队列中可能会阻塞等待队列中在其后面的线程的执行
### 练习7：完善`kernel/sched/policy_rr.c`中的调度功能，包括`rr_sched_enqueue`，`rr_sched_dequeue`，`rr_sched_choose_thread`与`rr_sched`
 - `rr_sched_enqueue`首先进行必要检查, 若线程为idle则不加入队列直接返回, 否则根据处理器亲核性的设置加入到对应CPU的等待队列中(若处理器亲和性设置为`NO_AFF`则加入到当前CPU的等待队列中), 并设置线程的state为`TS_READY`
````c
int rr_sched_enqueue(struct thread *thread) {
  if(!thread || !thread->thread_ctx || thread->thread_ctx->state==TS_READY)
    return -1;
  if (thread->thread_ctx->type == TYPE_IDLE) return 0;
  u32 dst_cpu_id = thread->thread_ctx->affinity;

  if (dst_cpu_id == NO_AFF)
    dst_cpu_id = smp_get_cpu_id();
  else if (dst_cpu_id >= PLAT_CPU_NUM || dst_cpu_id < 0)
    return -1;

  thread->thread_ctx->cpuid = dst_cpu_id;
  thread->thread_ctx->state = TS_READY;
  list_append(&(thread->ready_queue_node),
              &(rr_ready_queue_meta[dst_cpu_id].queue_head));
  return 0;
}
````
 - `rr_sched_dequeue`首先做必要检查, 之后将当前线程从等待队列中删除并将线程的状态设置为`TS_INTER`即可
````c
int rr_sched_dequeue(struct thread *thread) {
    if(thread == NULL || thread->thread_ctx == NULL || thread->thread_ctx->state != TS_READY ||
	    thread->thread_ctx->type == TYPE_IDLE || list_empty(&thread->ready_queue_node)){
		return -1;
	}
    thread->thread_ctx->state = TS_INTER;
    list_del(&(thread->ready_queue_node));
    return 0;
}
````
 - `rr_sched_choose_thread`如果当前cpu的等待队列为空则返回对应的idle_thread, 否则将等待队列中的第一个线程从队列中删除并返回
````c
struct thread *rr_sched_choose_thread(void) {
  struct thread *thread = NULL;
  u32 cpu_id = smp_get_cpu_id();
  if (!list_empty(&rr_ready_queue_meta[cpu_id])) {
    thread = list_entry(rr_ready_queue_meta[cpu_id].queue_head.next,
                        struct thread, ready_queue_node);
    if(rr_sched_dequeue(thread)==-1)thread = &(idle_threads[cpu_id]);
  } else
    thread = &(idle_threads[cpu_id]);
  /* LAB 4 TODO END */
  return thread;
}
````
 - `rr_sched`将当前线程的budget重置为`DEFAULT_BUDGET`并将其state设置为`TS_INTER`后加入到队列中, 如果当前线程的时间片未用完则继续运行; 之后使用`rr_sched_choose_thread`选择线程并切换到该线程
````c
static inline void rr_sched_refill_budget(struct thread *target, u32 budget) {
  target->thread_ctx->sc->budget = budget;
}

int rr_sched(void) {
  struct thread *current_thread_ = current_thread;
  if (current_thread_) {
    if (current_thread_->thread_ctx->state == TS_RUNNING) {
      if (current_thread_->thread_ctx->sc->budget) return 0;
      rr_sched_refill_budget(current_thread_, DEFAULT_BUDGET);
      current_thread_->thread_ctx->state = TS_INTER;
      rr_sched_enqueue(current_thread_);
    }
  }
  struct thread *thread = rr_sched_choose_thread();
  switch_to_thread(thread);
  return 0;
}
````
### 思考题8：如果异常是从内核态捕获的，CPU核心不会在`kernel/arch/aarch64/irq/irq_entry.c`的`handle_irq`中获得大内核锁。但是，有一种特殊情况，即如果空闲线程（以内核态运行）中捕获了错误，则CPU核心还应该获取大内核锁。否则，内核可能会被永远阻塞。请思考一下原因。
 - 首先, 如果idle线程捕获错误不需要获得大内核锁, 则其他线程捕获异常时也可以进入内核, 可能出现多个线程同时操作内核数据结构的情况
 - 根据`unlock`的实现, 内核可能在unlock时被永远阻塞, 因为`handle_irq`返回时会调用`eret_to_thread(switch_context())`而`__eret_to_thread`在返回前会`bl unlock_kernel`, 这会导致锁被lock的次数少于其被unlock的次数
    - 如果`unlock_kernel`的实现为
        ````c 
        void unlock_kernel(void){
            if(is_locked(&big_kernel_lock))
                unlock(&big_kernel_lock);
        }
        ````
        则内核不会阻塞
    - 如果`unlock_kernel`的实现为
        ````c 
        void unlock_kernel(void){
            BUG_ON(!is_locked(&big_kernel_lock));
            unlock(&big_kernel_lock);
        }
        ````
        则内核会因为BUG_ON被触发而阻塞
    - 如果`unlock_kernel`的实现为
        ````c 
        void unlock_kernel(void){
                unlock(&big_kernel_lock);
        }
        ````
        则big_kernel_lock的owner被向前移动(相当于跳过了一个ticket), 导致持有该ticket的线程永远不会被调度到, 从而永远阻塞
````c
BEGIN_FUNC(__eret_to_thread)
	mov	sp, x0
	dmb ish
	bl unlock_kernel
	exception_exit
END_FUNC(__eret_to_thread)
````
### 练习9：在`kernel/sched/sched.c`中实现系统调用`sys_yield()`，使用户态程序可以启动线程调度。此外，ChCore还添加了一个新的系统调用`sys_get_cpu_id`，其将返回当前线程运行的CPU的核心id。请在`kernel/syscall/syscall.c`文件中实现该函数
 - `sys_yield()`将当前线程的`budget`设置为0, 并调用`sched()`和`eret_to_thread(switch_context())`调度到其他线程
````c
void sys_yield(void){
        current_thread->thread_ctx->sc->budget = 0;
        sched();
        eret_to_thread(switch_context());
}
````
 - `sys_get_cpu_id()`将`current_thread->thread_ctx->cpuid`取出即可
### 练习10：定时器中断初始化的相关代码已包含在本实验的初始代码中（`timer_init`）。请在主CPU以及其他CPU的初始化流程中加入对该函数的调用。此时，`yield_spin.bin`应可以正常工作：主线程应能在一定时间后重新获得对CPU核心的控制并正常终止。
 - 在`main`激活其他core之前, `secondary_start`调度(sched())之前添加`timer_init`即可, 即调度器开始工作前初始化定时器中断
### 练习11：在`kernel/sched/sched.c`处理时钟中断的函数`sched_handle_timer_irq`中添加相应的代码，以便它可以支持预算机制。更新其他调度函数支持预算机制，不要忘记在`kernel/sched/sched.c`的`sys_yield()`中重置“预算”，确保`sys_yield`在被调用后可以立即调度当前线程。
 - `sched_handle_timer_irq`将当前线程的`budget`减1
````c
void sched_handle_timer_irq(void){
        if(current_thread && current_thread->thread_ctx && current_thread->thread_ctx->sc->budget >0)
            current_thread->thread_ctx->sc->budget--;
}
````
 - `sys_yield`见练习10说明
### 练习12：在`kernel/object/thread.c`中实现`sys_set_affinity`和`sys_get_affinity`。完善`kernel/sched/policy_rr.c`中的调度功能，增加线程的亲和性支持（如入队时检查亲和度等，请自行考虑）
 - `sys_set_affinity`和`sys_get_affinity`只需要设置和获取`thread->thread_ctx->affinity`
 - 调度对线程处理器亲核性的支持见练习11说明
### 练习13：在`userland/servers/procm/launch.c`中填写`launch_process`函数中缺损的代码
 - 第一空调用`__chcore_sys_creat_pmo`创建pmo
````c
main_stack_cap = __chcore_sys_create_pmo(MAIN_THREAD_STACK_SIZE, TYPE_USER);
````
 - 第二空设置栈顶和offset
````c
 stack_top = MAIN_THREAD_STACK_BASE + MAIN_THREAD_STACK_SIZE;
        offset = MAIN_THREAD_STACK_SIZE - 0x1000;
````
 - 第三空填写``pmo_map_requests[0]`
````c
pmo_map_requests[0].pmo_cap = main_stack_cap;
        pmo_map_requests[0].addr = ROUND_DOWN(MAIN_THREAD_STACK_BASE, PAGE_SIZE);
        pmo_map_requests[0].perm = VM_READ | VM_WRITE;
        pmo_map_requests[0].free_cap = 1;
````
 - 第四空设置`arg.stack`为`MAIN_THREAD_STACK_BASE + offset;`
### 练习14：在`libchcore/src/ipc/ipc.c`与`kernel/ipc/connection.c`中实现了大多数IPC相关的代码，请根据注释完成其余代码。
根据注释完成填空即可
 - `ipc_register_server`填空中将`vm_config`的`stack_base_addr`, `stack_size`, `buf_base_addr`, `buf_size`分别设置为`SERVER_STACK_BASE`,`SERVER_STACK_SIZE`, `SERVER_BUF_BASE`, `SERVER_BUF_SIZE`
 - `ipc_register_client`中将将`vm_config`的`buf_base_addr`, `buf_size`分别设置为`CLIENT_BUF_BASE + client_id * CLIENT_BUF_SIZE`和`CLIENT_BUF_SIZE`, 根据`client_id`设置的`buf_base_addr`可以使不同client的`bug_base_addr`不重叠
 - `create_connection`填空一中设置`server_stack_base = vm_config->stack_base_addr + conn_idx * vm_config->stack_size`这样使得不同connection在server中的stack不相重叠; 填空二设置`server_buf_base = vm_config->buf_base_addr + vm_config->buf_size * conn_idx`, `client_buf_base = client_vm_config->buf_base_addr`, 这样使得不同connection在server中的buffer不相重叠; 填空二使用`vmspace_map_range`将`buf_pmo`分别映射到client和server虚拟内存空间的`client_buf_base`和`server_buf_base`处
 - `sys_ipc_call`中第二处填空设置`arg = (u64)ipc_msg - conn->buf.client_user_addr + conn->buf.server_user_addr`, `arg`表示`ipc_msg`在server中的地址, 计算方式为`ipc_msg`的地址加上server buffer地址空间相对client buffer地址空间的偏移
 - 其余填空严格按照注释填写即可
### 练习15：ChCore在`kernel/semaphore/semaphore.h`中定义了内核信号量的结构体，并在`kernel/semaphore/semaphore.c`中提供了创建信号量`init_sem`与信号量对应syscall的处理函数。请补齐`wait_sem`操作与`signal_sem`操作
思路:
 - `wait_sem`如果`sem->sem_count`大于0则取资源成功, 将`sem->sem_count`减1后返回; 否则资源用尽需要等待, 若`is_block==0`则直接返回`-EAGAIN`; 否则调度到其他线程, 即将本线程加入到`sem->waiting_threads`队列, 使用`obj_put`释放对`sem`的引用, 将线程状态状态设置为`TS_INTER`并调用`sched`和`eret_to_thread(switch_context())`提前调度到其他线程
 - `signal_sem`如果发现`sem->waiting_threads`为空则将`sem->sem_count`加1后返回; 否则将等待队列中的第一个线程取出并唤醒, 唤醒的方法是将其加入到调度队列中(`sched_enqueue(thread)`)
````c
s32 wait_sem(struct semaphore *sem, bool is_block){
        s32 ret = 0;
        if(is_block && sem->sem_count == 0){
                current_thread->thread_ctx->state = TS_INTER;
                list_add(&(current_thread->sem_queue_node), &(sem->waiting_threads));
                obj_put(sem);
                sched();
                eret_to_thread(switch_context());
        }
        if(!is_block && sem->sem_count == 0)
                ret = -EAGAIN;
        else
                sem->sem_count--;
        return ret;
}

s32 signal_sem(struct semaphore *sem){
        if(!list_empty(&sem->waiting_threads)){
                struct thread* thread = list_entry(sem->waiting_threads.next, struct thread, sem_queue_node);
                list_del(&thread->sem_queue_node);
                thread->thread_ctx->state = TS_WAITING;
                sched_enqueue(thread);
        }
        else
                sem->sem_count++;
        return 0;
}
````
### 练习16：在`userland/apps/lab4/prodcons_impl.c`中实现`producer`和`consumer`。
思路: 
 - `producer`在添加`new_msg`前首先等待一个`empty_slot`, 在添加`new_msg`后signal一个`filled_slot`的产生
 - `consumer`反之, 在consume `new_msg`前首先等待一个`filled_slot`, 在consume `new_msg`后signal一个`empty_slot`的产生

````c
void *producer(void *arg){
    /* LAB 4 TODO BEGIN */
    __chcore_sys_wait_sem(empty_slot, 1);
    /* LAB 4 TODO END */
    new_msg = produce_new();
    buffer_add_safe(new_msg);
    /* LAB 4 TODO BEGIN */
    __chcore_sys_signal_sem(filled_slot);
    /* LAB 4 TODO END */
}

void *consumer(void *arg){
    /* LAB 4 TODO BEGIN */
    __chcore_sys_wait_sem(filled_slot, 1);
    /* LAB 4 TODO END */
    cur_msg = buffer_remove_safe();
	/* LAB 4 TODO BEGIN */
    __chcore_sys_signal_sem(empty_slot);
    /* LAB 4 TODO END */
	consume_msg(cur_msg);
}

````
### 练习17：请使用内核信号量实现阻塞互斥锁，在`userland/apps/lab4/mutex.c`中填上`lock`与`unlock`的代码。注意，这里不能使用提供的`spinlock`。
思路: 锁相当于资源量为1的信号量, 因此在`lock_init`中初始化`sem_count`为1, `lock`和`unlock`分别对应`wait_sem`和`signal_sem`即可
````c
void lock_init(struct lock *lock){
	lock->lock_sem = __chcore_sys_create_sem();
    __chcore_sys_signal_sem(lock->lock_sem);
}

void lock(struct lock *lock){
    __chcore_sys_wait_sem(lock->lock_sem, 1);
}

void unlock(struct lock *lock){
    __chcore_sys_signal_sem(lock->lock_sem);
}
````