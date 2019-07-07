global ft_strlen

section .text

ft_strlen:
    mov rsi, rdi ; backup rdi
    mov al, 0    ; look for \0
    repne scasb  ; actually do the search
    sub rdi, rsi ; save the string length
    dec rdi      ; don't count the \0 in the string length
    mov rax, rdi ; save the return value
    ret