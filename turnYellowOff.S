.section .text
.align 2
.globl turnYellowOff

.include "memory_map.inc"

turnYellowOff:
    li	a5,GPIO_B_ADDRESS
	li	a4,0b1000000000000000
	sw	a4,16(a5)
    ret