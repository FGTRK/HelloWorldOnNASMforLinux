.data ;Segment with initialized data
	mess: db "Hello World! On 64-bit architecture", 10 ; String "Hello world", one byte per character
	messlen: equ $-mess ; Lenght string "Hello world"

.text ;Segment with instructions
global _start ; Entry point to the program

_start: ; Start the program
	mov rax,1 ; Number syscall sys_write
	mov rdi,1 ; Output in file with a File Descriptor 1: Standard Output
	mov rsi, mess ; Pass offset of the message
	mov rdx, messlen ; Pass the length of the message
	syscall ; Make syscall to output the text to stdout

exit:	
	mov rax, 60 ; Number syscall sys_exit
	xor rdi, rdi ; Return a code of zero (The program was executed without errors)
	syscall ; Make syscall to terminate the program

; This program print message "Hellow World" at console on 32-bit architecture