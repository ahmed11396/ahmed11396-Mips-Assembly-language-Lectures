.data
a:.asciiz  "Hello Students"
.text
li $v0,4
la $a0,a
syscall

