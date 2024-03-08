.data

.text
 li $t1,7
 li $t2,2
 div $t3,$t1,$t2
 
 li $v0,1
 move $a0,$t3
syscall
