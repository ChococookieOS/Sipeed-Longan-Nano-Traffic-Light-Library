.section .text
.align 2
.globl turnRedOn

.include "memory_map.inc"

turnRedOn:
    li	a5,GPIO_A_ADDRESS
	li	a4,0b100000000 /*256*/
	sw	a4,20(a5)
    ret