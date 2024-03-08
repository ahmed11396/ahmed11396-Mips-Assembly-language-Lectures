
.data
    rows: .word 4
    number: .word 1
    newline: .asciiz "\n"
    space: .asciiz " "
    
.text
 main:   
    lw $s0, rows
    lw $s1, number
    
    li $t0,  1
    outerloop:
        
        li $t1, 1
        innerloop:
            addi $t1, $t1, 1
            
            li $v0, 1
            move $a0, $s1
            syscall
            
            li $v0, 4
            la $a0, space
            syscall
            
            addi $s1, $s1, 1
            
            ble $t1, $t0, innerloop
        
        addi $t0, $t0, 1
        
        li $v0, 4
        la $a0, newline
        syscall
        
        ble $t0, $s0, outerloop


    exit:
        li $v0, 10
        syscall
