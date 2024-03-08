.data
 newline:.asciiz "\n"
.text
	addi $s0,$zero,10
	li $v0,1
	move $a0,$s0
	syscall

li $v0,10
syscall