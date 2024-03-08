.data
nums:   .word 20, 12, 23, 17, 7, 8, 10, 2, 1, 0
len_msg: .asciiz "Original Array\n"
res_msg: .asciiz "Array after separation\n"
comma: .asciiz ", "
lineBr: .asciiz "\n"

.text
.globl main

separate_odd_even:
    addi $sp, $sp, -16     
    sw $ra, ($sp)         
    sw $s0, 4($sp)       
    sw $s1, 8($sp)         
    sw $s2, 12($sp)        

    move $s0, $a0          
    move $s1, $a1          
    li $s2, 0             

    loop1:
        bge $s2, $s1, end_sort  
        lw $t0, ($s0)           
        andi $t1, $t0, 1       
        beqz $t1, even        
        addi $s2, $s2, 1      
        j loop1

    even:
        lw $t2, ($s0)         
        addi $s2, $s2, 1       
        lw $t3, ($s0)          
        addi $s1, $s1, -1      
        andi $t4, $t3, 1       
        bnez $t4, odd          
        j loop1

    odd:
        sw $t2, ($s0)           
        sw $t3, ($s0)          
        j loop1

    end_sort:
        lw $ra, ($sp)           
        lw $s0, 4($sp)         
        lw $s1, 8($sp)        
        lw $s2, 12($sp)        
        addi $sp, $sp, 16     
        jr $ra                  

print_array:
    add $t0, $zero, $a0
    add $t1, $zero, $a1
    
loop:
    beq $t1, $zero, end_print_array
    
    lw $a0, 0($t0)
    li $v0, 1
    syscall
    li $v0, 4
    la $a0, comma
    syscall
    
    addi $t0, $t0, 4
    addi $t1, $t1, -1
    j loop
    
end_print_array:
    li $v0, 4
    la $a0, lineBr
    syscall
    jr $ra

main:
    la $a0, len_msg
    li $v0, 4
    syscall

    la $a0, nums
    la $a1, 10
    jal print_array

    la $a0, res_msg
    li $v0, 4
    syscall

    la $a0, nums
    la $a1, 10
    jal separate_odd_even

    la $a0, nums
    la $a1, 10
    jal print_array
    
    li $v0, 10
    syscall