.data
mssg:.asciiz "The multiply of number : "

.text
li $v0,4
la $a0,mssg
syscall
li $t0,2
li $t1,2

mul $t2,$t0,$t1

li $v0,1

move $a0,$t2
syscall
