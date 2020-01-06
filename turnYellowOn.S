.section .text
.align 2
.globl turnYellowOn

.include "memory_map.inc"

turnYellowOn:
    li	a5,GPIO_B_ADDRESS
	li	a4,32768 /*0b1000000000000000*/
	sw	a4,16(a5)
    ret