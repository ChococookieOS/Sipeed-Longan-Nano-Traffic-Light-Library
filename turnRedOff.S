.section .text
.align 2
.globl turnRedOff

.include "memory_map.inc"

turnRedOff:
    li	a5,GPIO_A_ADDRESS
	li	a4,0b100000000 /*256*/
	sw	a4,16(a5)
    ret