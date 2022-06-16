#include <common/kprint.h>
#include <common/macro.h>
#include <common/types.h>
#include <common/vars.h>
#include <image.h>
#include <io/uart.h>
#include <machine.h>
#include <mm/mm.h>
#include <arch/aarch64/arch/mm/page_table.h>
#define PHYSMEM_END (0x40000000UL)
#define PHYSMEM_START (0x0UL)

ALIGN(STACK_ALIGNMENT)
char kernel_stack[PLAT_CPU_NUM][KERNEL_STACK_SIZE];

#ifdef CHCORE_KERNEL_TEST
#include <lab.h>
static void lab2_test_kernel_vaddr(void) {
  u64 pc;
  asm volatile("adr %0, ." : "=r"(pc));
  lab_check(pc >= KBASE, "Jump to kernel high memory");
}

#include <arch/mm/page_table.h>
#include <mm/kmalloc.h>
#endif /* CHCORE_KERNEL_TEST */

extern u64* boot_ttbr0_l0;
/*
 * @boot_flag is the physical address of boot flag;
 */
void main(paddr_t boot_flag) {
  /* Init uart: no need to init the uart again */
  uart_init();
  kinfo("[ChCore] uart init finished\n");

  // kinfo("[ChCore] unmap KERNEL vm\n");
  // unmap_range_in_pgtbl(boot_ttbr0_l0, KERNEL_VADDR,
  //                      PHYSMEM_END - PHYSMEM_START);
  // kinfo("[ChCore] remap KERNEL vm\n");
  // map_range_in_pgtbl(boot_ttbr0_l0, KERNEL_VADDR, PHYSMEM_END - PHYSMEM_START,
  //                    PHYSMEM_START, VMR_READ | VMR_WRITE);

#ifdef CHCORE_KERNEL_TEST
  lab2_test_kernel_vaddr();
#endif /* CHCORE_KERNEL_TEST */

  /* Init mm */
  mm_init();
  kinfo("[ChCore] mm init finished\n");

#ifdef CHCORE_KERNEL_TEST
  void lab2_test_kmalloc(void);
  lab2_test_kmalloc();
  void lab2_test_page_table(void);
  lab2_test_page_table();
#endif /* CHCORE_KERNEL_TEST */

  while (1) {
  }

  /* Should provide panic and use here */
  BUG("[FATAL] Should never be here!\n");
}
