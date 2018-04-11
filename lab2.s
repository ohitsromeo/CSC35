# lab2.s


.data

Raisins:
	.ascii "Raisins : 9 carbs per cookie \n\0"

ChocolateBits:
	.ascii "Chocolate Bits : 2 carbs per cookie \n\0"

Oatmeal:
	.ascii "Oatmeal : 3 carbs per cookie \n\0"

Raisins1:
	.ascii "How many Raisins cookies? \n\0"

ChocolateBits1:
	.ascii "How many Chocolate Bits? \n\0"

Oatmeal1:
	.ascii "How many Oatmeal cookies? \n\0"
Message:
	.ascii "Wow! That's a total of \0"
Message2:
	.ascii " carbs \n\0" 


.text
.global _start

_start:
	mov $Raisins, %rax
	call PrintCString

	mov $ChocolateBits, %rax
	call PrintCString

	mov $Raisins , %rax
	call PrintCString
	
	mov $Oatmeal, %rax
	call PrintCString

	mov $Raisins1, %rax
	call PrintCString
	call ScanInt
	mov %rax, %rdx

	mov $ChocolateBits1, %rax
	call PrintCString
	call ScanInt
	mov %rax, %rcx

	mov $Oatmeal1, %rax
	call PrintCString
	call ScanInt
	mov %rax, %rbx

	IMUL $9, %rdx
	add %rdx, %rax
	
	IMUL $2, %rcx
	add %rcx, %rax

	IMUL $3, %rbx
	add  %rbx, %rax

	mov %rax, %rdi
 
	mov $Message, %rax
	call PrintCString

	mov %rdi, %rax
	call PrintInt

	mov $Message2, %rax
	call PrintCString
End:
	call EndProgram
