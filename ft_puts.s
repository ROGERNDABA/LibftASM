;----------------------------;
; ft_puts.s
; Created By : Roger Ndaba
;----------------------------;

global ft_puts

extern	ft_strlen

section .text

ft_puts:
	mov rcx, rdi
	call ft_strlen
	mov rdi, 1
	mov rdx, rax
	mov rax, 0x2000004
	mov rsi, rcx
	syscall

	mov rdx, 1
	mov rax, 0x2000004
	lea rsi, [rel newline]
	syscall

end:
	ret

section .data
newline db 0x0a
