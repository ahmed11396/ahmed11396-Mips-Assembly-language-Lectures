.data

.text
addi $t0, $t0,7
addi $t1, $t1,4

rem $t2,$t0,$t1
li $v0,1
move $a0,$t2
syscall

