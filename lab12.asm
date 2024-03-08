.data

endl:.asciiz "\n"
.text
main:

addi $s1,$s1,10
jal new
li $v0,4

li $v0,1
la $a0,endl 
move $a0,$s1
syscall
li $v0, 10
syscall 
new:
addi $sp,$sp,-4
sw $s1,0($sp)
addi $s1,$s1,3
li $v0,1
move $a0, $s1
syscall
lw $s1,0($sp)
addi $sp,$sp,4
jr $ra

