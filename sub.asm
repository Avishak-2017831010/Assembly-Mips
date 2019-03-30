.data

	s1: .asciiz "Enter 1st number \n"
	s2: .asciiz "Enter 2nd number \n"
	s3: .asciiz "Result="

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
	
	li $v0,4
	la $a0,s3
	syscall
	
	sub $t2,$t0,$t1
	
	li $v0,1
	la $a0,($t2)
	syscall 