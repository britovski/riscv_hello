# Simple RISC-V Hello World assembly program

.global	_start

_start:	
	addi	a0, x0, 1			# FD argument 1
	la	a1, helloworld			# string address
	addi 	a2, x0, 13			# string lenght
	addi 	a7, x0, 64			# RISC linux "write" syscall
	ecall

	addi 	a0, x0, 0			# FD argument 0
	addi 	a7, x0, 93			# RISC linux "terminate program" syscall
	ecall

.data
helloworld: 	.ascii "Hello World!\n"
