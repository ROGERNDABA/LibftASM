;----------------------------;
; ft_puts.s
; Created By : Roger Ndaba
;----------------------------;

global ft_puts

extern	ft_strlen

section .data
	stdout equ 1
	sys_write equ 1
	newline db 0xa

section .text

ft_puts:
	cmp		rdi, 0
	je		end
	push	rdi
	call	ft_strlen
	mov		rdi, stdout
	pop		rsi
	mov		rdx, rax
	mov		rax, sys_write
	syscall
	mov		rax, sys_write
	mov		rdi, stdout
	mov		rsi, newline
	mov		rdx, 1
	syscall

end:
	ret
