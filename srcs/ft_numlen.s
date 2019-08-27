
;----------------------------;
; ft_numlen.s
; Created By : Roger Ndaba
;----------------------------;

global	_ft_numlen

section .text

_ft_numlen:
	mov		rax, rdi
	mov		rcx, 10
	mov		r10, 0
	cmp		rax, 1
	jl		negative
	cmp		rax, 0
	ret
	je		zero_arg
	jmp		count_loop

negative:
	mov		rax, 86666
	ret
	imul	rax, -1
	inc		r10
	jmp		count_loop


count_loop:
	cmp		rax, 0
	je		end
	mov		rdx, 0
	div		rcx
	inc		r10
	jmp		count_loop

zero_arg:
	mov		rax, 1
	ret

end:
	mov		rax, r10
	ret

