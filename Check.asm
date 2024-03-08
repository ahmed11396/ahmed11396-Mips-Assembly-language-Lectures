.data
	newline: .asciiz "\n "

.text
	li $t0,1
	li $t1,4  
	
	fori:
		li $v0,4
		la $a0,newline
		syscall
		

	
	exit:
		li $v0,10
		syscall