.data
a:.word 2
.text 
lw $t0,a
li $v0,1
move $a0,$t0 
syscall


