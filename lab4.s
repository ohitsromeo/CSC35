
#lab4.s

.data
Risk:
	.ascii "Risk of Getting Into an Auto Accident\n\0"

Seatbelt:
	.ascii "Are you wearing a seatbelt?\n\0"

Speed:
	.ascii "Are you going on the speed limit?\n\0"

Tailgate:
	.ascii "Are you tailgating?\n\0"

Sleep:
	.ascii "Are you feeling sleepy while driving?\n\0"

Drunk:
	.ascii "Are you under the influence while driving?\n\0"

Input:
	.space 2

Percent:
	.ascii "Your risk estimate is \0"

PercentSign:
	.ascii "%\n\0"

.text
.global _start
_start:
	mov $Risk, %rax
	call PrintCString

QuestionOne:
	mov $Seatbelt, %rax
	call PrintCString
	mov $Input, %rax
	mov $2, %rbx
	call ScanCString
	mov Input, %al
	cmp $'y', %al
	je QuestionTwo 
	add $5, %rcx

QuestionTwo:
	mov $Speed, %rax
	call PrintCString
	mov $Input, %rax
	call ScanCString
	mov Input, %al
	cmp $'n', %al
	je QuestionThree
	add $6, %rcx

QuestionThree:
	mov $Tailgate, %rax
	call PrintCString
	mov $Input, %rax
	call ScanCString
	mov Input, %al
	cmp $'n', %al
	je QuestionFour
	add $2, %rcx

QuestionFour:
	mov $Sleep, %rax
	call PrintCString
	mov $Input, %rax
	call ScanCString
	mov Input, %al
	cmp $'n', %al
	je QuestionFive
	add $3, %rcx

QuestionFive:
	mov $Drunk, %rax
	call PrintCString
	mov $Input, %rax
	call ScanCString
	mov Input, %al
	cmp $'n', %al
	je AddTen

AddTen:
	add $10, %rcx
	mov $Percent, %rax
	call PrintCString
	mov %rcx, %rax
	imul $100, %rax
	mov $26, %rcx
	idiv %rcx
	call PrintInt
	mov $PercentSign, %rax
	call PrintCString

EndProgram:
	call EndProgram

