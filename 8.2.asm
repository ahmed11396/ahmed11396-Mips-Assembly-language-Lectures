.data
a:.asciiz "Hello Students"
b:.asciiz "\n"
c:.asciiz "Ahmed Mujtaba Shaikh"
.text 
li $v0,4
la $a0, a
syscall
li $v0,4
la $a0, b
syscall
li $v0,4
la $a0, c
syscall