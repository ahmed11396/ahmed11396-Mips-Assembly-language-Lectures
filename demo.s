.data

a:.asciiz "Hello students"

.text
li $v0,4
la $v0,a
syscall