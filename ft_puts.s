;----------------------------;
; ft_puts.s
; Created By : Roger Ndaba
;----------------------------;

global _ft_puts

extern _ft_strlen

section .data
	newline db 0xa
	msg: db "(null)", 0xa
	.len: equ $ - msg

section .text

_ft_puts:
	cmp		rdi, 0x0
	je		end
	push	rdi
	call	_ft_strlen
	mov		rdi, 0x1
	pop		rsi
	mov		rdx, rax
	mov		rax, 0x2000004
	syscall
	mov		rax, 0x2000004
	mov		rdi, 0x1
	lea		rsi, [rel newline]
	mov		rdx, 0x1
	syscall
	ret

end:
	mov     rax, 0x2000004
	push rdi
    mov     rdi, 1 ; stdout
    lea     rsi, [rel msg]
    mov     rdx, msg.len
    syscall
	pop rdi
	ret
