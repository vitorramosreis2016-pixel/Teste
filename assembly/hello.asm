; x86-64 Linux, NASM syntax
; Build: nasm -felf64 assembly/hello.asm -o hello.o && ld hello.o -o hello

section .data
    message db "Hello from Assembly!", 10
    message_len equ $ - message

section .text
global _start
_start:
    mov eax, 1          ; sys_write
    mov edi, 1          ; stdout
    mov rsi, message
    mov edx, message_len
    syscall

    mov eax, 60         ; sys_exit
    xor edi, edi
    syscall
