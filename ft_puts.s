;----------------------------;
; ft_puts.s
; Created By : Roger Ndaba
;----------------------------;

global ft_puts

extern	ft_strlen

section .data
	STDOUT equ 1
	SYS_WRITE equ 1
	NEW_LINE db 0xa

section .text

ft_puts:
	cmp		rdi, 0
	je		end
	push	rdi
	call	ft_strlen
	mov		rdi, STDOUT
	pop		rsi
	mov		rdx, rax
	mov		rax, SYS_WRITE
	syscall
	mov		rax, SYS_WRITE
	mov		rdi, STDOUT
	mov		rsi, NEW_LINE
	mov		rdx, 1
	syscall

end:
	ret
