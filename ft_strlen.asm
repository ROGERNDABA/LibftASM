global ft_strlen

section .text

ft_strlen:
    push rdi
    push rcx
    mov rcx, -1
    xor eax, eax
    repne scasb 
    not rcx
    mov rax, rcx 
    pop rcx
    pop rdi
    ret