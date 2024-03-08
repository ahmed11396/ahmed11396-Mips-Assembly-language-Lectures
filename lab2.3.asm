.data
a:.word 10
b:.word 3
mssg:.asciiz "\n Your sum is : "
.text 
lw $t0,a
lw $t1,b
sub $t3 ,$t0,$t1
li $v0, 4
la $a0,mssg
syscall

li $v0,1 
move $a0,$t3
syscall
