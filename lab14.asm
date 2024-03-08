.data
newline:.asciiz "\n"
.text
	addi $s0,$zero,10
	jal addmyvalues
	
	li $v0,4
	la $a0, newline
	syscall
	li $v0,1
	move $a0,$s0
	syscall

li $v0,10
syscall

addmyvalues:
addi $sp,$sp,-4
sw $s0, 0($sp)
addi $s0, $s0,30

li $v0,1
move $a0,$s0
syscall


lw $s0,0($sp)
addi $sp,$sp,4

jr $ra
