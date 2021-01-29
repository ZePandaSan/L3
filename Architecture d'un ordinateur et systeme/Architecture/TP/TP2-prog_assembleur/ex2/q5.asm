section .data
message: db "Je pense donc j'écris",10
longueur: equ $-message
section .text
global _start
_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, message
    mov edx, longueur
    int 80h
    mov eax, 1
    mov ebx, 0
    int 80h