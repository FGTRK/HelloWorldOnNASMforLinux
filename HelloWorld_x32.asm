.data ;Segment with initialized data
	mess: db "Hello World! On 32-bit architecture", 10 ; String "Hello world", one byte per character
	messlen: equ $-mess ; Lenght string "Hello world"

.text ;Segment with instructions
global _start ; Entry point to the program

_start: ; Start the program
	mov eax,4 ; Number syscall sys_write
	mov ebx,1 ; Output in file with a File Descriptor 1: Standard Output
	mov ecx, mess ; Pass offset of the message
	mov edx, messlen ; Pass the length of the message
	int 80h ; Make syscall to output the text to stdout

exit:	
	mov eax, 1 ; Number syscall sys_exit
	mov ebx, 0 ; Return a code of zero (The program was executed without errors)
	int 80h ; Make syscall to terminate the program

; This program print message "Hellow World" at console on 32-bit architecture