
;----------------------------;
; ft_numlen.s
; Created By : Roger Ndaba
;----------------------------;

global	_ft_numlen

section .text

_ft_numlen:
    mov rbx, 123
    xor rdi, rdi

.loop:
    mov rcx, rax                    ; save original number

    mul rbx                         ; divide by 10 using agner fog's 'magic number'
    shr rdx, 3                      ;

    mov rax, rdx                    ; store quotient for next loop

    lea rdx, [rdx*4 + rdx]          ; multiply by 10
    shl rdi, 8                      ; make room for byte
    lea rdx, [rdx*2 - '0']          ; finish *10 and convert to ascii
    sub rcx, rdx                    ; subtract from original number to get remainder

    lea rdi, [rdi + rcx]            ; store next byte

    test rax, rax
    jnz .loop
