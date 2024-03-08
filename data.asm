.data
numbers: .word 2, -9, 0, 5, 12, -25, 9, 8, 12 # initialize array
numlength: .word 10
.text
la $s0,numbers
li $s1,0 #maxindex
li $s2,1 # value of i
lw $t0,0($s0) #$t0 is max value

for:
beq $s2,10,exit #for
lw $t1,0($s0)
bgt $t1,$t0,swap
addi $s0,$s0,4
addi $s2,$s2,1
j for 

swap:
move $s1,$s2
lw $t0,0($s0)
j for

exit:
li $v0,1
move $a0,$t0
syscall
li $v0,10
syscall
