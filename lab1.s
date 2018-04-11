# lab1.s
# 1. Assemble : as -o lab1.o lab1.s
# 2. Link     : ld -o a.out lab1.o csc35.o
# 3. Execute  : a.out

.data                                                          #Start the data section
Message:                                                       #Message is an address
    .ascii "Hello Dr. Sugar!\n\0"                              #Create a buffer of ASCII
   
Name:
    .ascii "My name is\0"

Checkups:
    .ascii "I haven't had a check-up in \0"

Months:
    .ascii " months\n\0"
 
Quote:
    .ascii "I MISS JGRASP\0"

.text                                                          #Start the text section
.global _start                                                  #Make the _start label public

_start:                                                        #UNIX starts here
    mov  $Message, %rax                                        #Put the address into rax
    call PrintCString

    mov  $Name , %rax
    call PrintCString

    mov  $Checkups, %rax
    call PrintCString

    mov  $23, %rax
    call PrintInt

    mov $Months, %rax
    call PrintCString

    mov  $Quote, %rax
    call PrintCString                                          #Execute the csc35.o subroutine

    call EndProgram                                            #Execute the csc35.o subroutine
