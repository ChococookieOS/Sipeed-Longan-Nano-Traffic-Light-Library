.section .text
.align 2
.globl turnGreenOn

.include "memory_map.inc"

turnGreenOn:
    li	a5,GPIO_B_ADDRESS
	li	a4,0b100000000000000
	sw	a4,16(a5)
    ret