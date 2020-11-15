; For learning how to use registers and system call
global _start

section .text
_start:
	mov rdx, len
	mov rsi, msg
	mov rdi, 1
	mov rax, 1
	syscall

	mov rdx, len_s
	mov rsi, stars
	mov rdi, 1
	mov rax, 1
	syscall

	mov eax, 60
	syscall

section .data
msg db 'Displaying 9 stars',13,10
len equ $ - msg
stars db '*********',13,10
len_s equ $ - stars
