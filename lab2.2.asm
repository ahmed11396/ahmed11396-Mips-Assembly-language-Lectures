.data 

a:.word -2
b:.word 10
.text
lw $t0,a
lw $t1,b
add $t2,$t1,$t0
li $v0,1
move $a0, $t2 
syscall

