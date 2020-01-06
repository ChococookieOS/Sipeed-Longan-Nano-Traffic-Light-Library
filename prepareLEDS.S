.section .text
.align 2
.globl prepareLEDS

.include "memory_map.inc"

prepareLEDS:
    addi sp, sp, -16  # Moves the stack pointer
    sw ra, 12(sp)    # Save the return Address onto the stack

    li	a5, 0x40010804 # GPIOA
	lw	a4, 0(a5)
	li	a3,0x33000000		
	ori	a4,a4,3
	sw	a4, 0(a5)  # RED LED

	# YELLOW and GREEN LED
	li  a5, 0x40010C04
	lw	a4, 0(a5)
	or	a4,a4,a3
	sw	a4, 0(a5)

    lw ra, 12(sp)              # Restore the return address
    addi sp, sp, 16            # Deallocating the stack frame
    ret
