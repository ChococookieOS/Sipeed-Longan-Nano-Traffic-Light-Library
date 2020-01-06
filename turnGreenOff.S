.section .text
.align 2
.globl turnGreenOff

.include "memory_map.inc"

turnGreenOff:
    li	a5,GPIO_B_ADDRESS
	li	a4,0b100000000000000
	sw	a4,12(a5)
    ret