.data
array: .word 2,5
	.word 3,7

size:  .word 2
.eqv size 4

.text 

main: 

la $a0,array
lw $a1,size
jal sum

move $a0,$v0 #$v0 is store the sum
li $v0,1
syscall

# end the code
li $v0,10
syscall

sum:
li $v0,0 #sum =0
li $t0, 0 #$t0 = index

loop:
mul $t1,$t0,$a1	 #t1 = rowidex * Colsize
add $t1,$t1,$t0  	#                + Colindex  
mul $t1,$t1,2    #* size
add $t1,$t1,$a0		# +base adrress

lw $t2,($t1)
add $v0,$v0, $t2  #sum= sum+array[i][j]

addi $t0, $t0,1      #i++


blt $t0,$a0,loop   # used for loop

jr $ra



