section .bss
BUFF: resb 64
N: equ $-BUFF

section .text

global _start

_start: 
mov eax, 3
mov ebx, 0
mov ecx, BUFF
mov edx, N
int 80h

mov eax, 4
mov ebx, 1
mov ecx, BUFF
mov edx, N
int 80h

mov eax, 1
mov ebx, 0
int 80h