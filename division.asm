.data

 	s1: .asciiz "Quioent : "
 	s2: .asciiz "Remainder: "
 	s3: .asciiz "\n"

.text

	li $v0,5
	syscall
	move $t0,$v0
	
	li $v0,5
	syscall
	move $t1,$v0
	
	div $t0,$t1
	
	mflo $t2 
	mfhi $t3
	
	li $v0,4
	la $a0,s1
	syscall
	
	li $v0,1
	add $a0,$zero,$t2
	syscall
	
	li $v0,4
	la $a0,s3
	syscall
	
	
	li $v0,4
	la $a0,s2
	syscall
	
	li $v0,1
	add $a0,$zero,$t3
	syscall