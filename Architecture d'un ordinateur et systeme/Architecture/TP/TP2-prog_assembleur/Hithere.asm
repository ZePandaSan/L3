section .data
message: db 'Bonjour chez vous !',10
msg2: db 'Hi there',10
longueur: equ $-message
longueur2: equ $-msg2
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

    mov eax, 4
    mov ebx, 1
    mov ecx, msg2
    mov edx, longueur2
    int 80h
    mov eax, 1
    mov ebx, 0
    int 80h
