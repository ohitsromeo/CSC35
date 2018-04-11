# lab5.s 

.data

Input:
	.space 40
Copy:
	.space 40
Message: 
	.ascii "Please enter a text message : \n\0"
Fix:
	.ascii "Fixed sentence is : \n\0"

.text
.global _start

_start:
	mov $Message, %rax
	call PrintCString
	
	mov $Input, %rax
	mov $40, %rbx
	call ScanCString
	mov $0, %edi
While:
	cmp $40, %edi
	je Done
	
	mov Input(%edi), %al
	mov %al, Copy (%edi)

	add $1, %edi
	jmp While
Done:
	mov $Copy, %rax
	mov "a", %r8
A:
	cmp $Copy, %r8
	je Equal
	jmp End
Equal:
	add $32, %r8
	mov $1, %rdi
	movb , (%rax, %rdi)
	call PrintCString
	jmp End
End:
	
	call EndProgram
