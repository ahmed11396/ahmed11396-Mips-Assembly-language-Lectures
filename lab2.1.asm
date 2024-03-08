.data
a:.float 5
.text
lwc1 $f0,a
li $v0,2
mov.s $f12 $f0
syscall
