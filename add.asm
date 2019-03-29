.data
	s1: .asciiz "Enter 1st number \n"
	s2: .asciiz "Enter 2nd number \n"
	s3: .asciiz "Result \n"
.text

	li $v0,4
	la $a0,s1
	syscall
	
	li $v0,5
	syscall
	move $t0,$v0
	
	li $v0,4
	la $a0,s2
	syscall
	
	li $v0,5
	syscall
	move $t1,$v0
	
	add $t2,$t1,$t0
	
	li $v0,4
	la $a0,s3
	syscall
	
	li $v0,1
	la $a0,($t2)
	syscall
	
	
	
	
