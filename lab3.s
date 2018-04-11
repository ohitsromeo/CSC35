
#lab3.s


.data
Daily:
	.ascii "How many daily units does the patient take? \n\0"

ICF:
	.ascii "The patient's ICF is: \0"

Line:
	.ascii "\n\0"

SugarLevel:
	.ascii "What is the patient's blood sugar level? \n\0"	

Message:
	.ascii "The patient needs \0"

Units: 
	.ascii " units.\n\0"

.global _start

_start:
	mov $Daily, %rax
		call PrintCString
		call ScanInt
	
	mov %rax, %rbx

	mov $ICF, %rax
		call PrintCString
	
	mov $1800, %rax

	idiv %rbx
		call PrintInt
	
	mov %rax, %rcx

	mov $Line, %rax
		call PrintCString

	mov $SugarLevel, %rax
		call PrintCString
		call ScanInt
	
	mov %rax, %rbx
	
	mov $Message, %rax
		call PrintCString
	
	mov %rbx, %rax
	
	Sub $150, %rax

	idiv %rcx
		call PrintInt
	
	mov $Units, %rax
		call PrintCString

	call EndProgram

	
