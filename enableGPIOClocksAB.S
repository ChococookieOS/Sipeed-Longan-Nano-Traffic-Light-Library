.section .text
.align 2
.globl enableGPIOClocksAB
enableGPIOClocksAB:
	li	a4,1073876992
	lw	a5,24(a4)
	ori	a5,a5,12
	sw	a5,24(a4)
    ret