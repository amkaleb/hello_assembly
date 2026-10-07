section .text
global _start

_start:
    ; sys_write (rax = 1)
    mov rax, 1          ; 1 = write
    mov rdi, 1          ; 1 = stdout
    mov rsi, msg        ; pointer to string
    mov rdx, 13         ; length
    syscall             ; call kernel

    ; sys_exit (rax = 60)
    mov rax, 60         ; 60 = exit
    mov rdi, 0          ; status 0
    syscall             ; call kernel

section .data
msg db "AmKaleb!", 0xA
