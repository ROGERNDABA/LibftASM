;----------------------------;
; ft_strlen.asm
; Created By : Roger Ndaba
;----------------------------;

global _ft_strlen

section .text

_ft_strlen:
    mov rsi, rdi
    mov al, 0
    repne scasb
    sub rdi, rsi
    dec rdi
    mov rax, rdi
    ret