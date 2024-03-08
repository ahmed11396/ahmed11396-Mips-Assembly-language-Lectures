.data
a:.asciiz "Hello world"
b:.asciiz "Hello"
.text 
li $v0,4
la $a0,a
syscall
li $v0,4
la $a0,b
syscall