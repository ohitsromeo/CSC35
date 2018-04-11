
#Lab 6

.data
Message: 
	.ascii "Have a great Summer\n"
Name: 
	.ascii "My name is \n"
Summer:
	.ascii "\nSummer Classes\n"

.text
.global _start

_start:
	mov $1, %rax
	mov $1, %rdi
	mov $Message, %rsi
	mov $27, %rdx
	syscall

	mov $1, %rax
	mov $1, %rdi
	mov $Name, %rsi
	mov $23, %rdx
	syscall

	mov $1, %rax
        mov $1, %rdi
	mov $Summer, %rsi
	mov $16, %rdx
	syscall
 
	mov $60, %rax
	mov $0,%rdi
	syscall

