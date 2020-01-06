.section .text
.align 2
.globl prepareInput
prepareInput:
    /* GPIOC*/
	li	a5,0x40011000
	lw	a4,-1020(a5)
    /*inputmode 8 -> 1000 for 13 and 12 */
	li	a3,0b100010000000000000000000
	or	a4,a4,a3
    /* Set OCTL Bits */
	li	a3, 0b11000000000000
	sw	a3,-1004(a5)
	sw	a4,-1020(a5)
	ret