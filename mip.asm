.data 
	m1:.asciiz  "\n one"
	m2:.asciiz  "\n two"
	m3:.asciiz  "\n three"
	
	x:.word 1
	y:.word 2          
	z:.word 5

.text
      main:
 	 lw $t0,x
       	lw $t1,y      
       	lw $t2,z
        
      if1: 
      	beq $t0,1,one
      	bge $t0,$t1,one   
      	bge $t0,$t2,one
      	j if2    

	one:
	li $v0, 4  
	la $a0, m1  
  	syscall
	
		j if2   

	if2: 
      	beq $t0,$t1,two
      	beq  $t1,2,two      
      	beq  $t2,5,two 
      	
      		j if3   
    
	two:
    	li $v0, 4  
    	la $a0, m2  
    	syscall  
    
     		j if3		 			
	
	if3: 
      		
      	beq $t0,$t1,three
      	beq $t1,$t2,three,   
      	beq $t2,$t0,three
      	    
	three:
 	
    	li $v0, 4  	
    	la $a0, m3 	 
    	syscall   
    		
    	j exit   
     
	exit:
       	li $v0,10
       	syscall