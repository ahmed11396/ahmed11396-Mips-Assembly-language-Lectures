.data

.text
li $t1,98
srl $t1,$t1, 10
li $v0 ,1
move $a0, $t1
syscall
li $v0 , 10 
syscall