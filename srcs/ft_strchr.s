
;----------------------------;
; ft_strchr.s
; Created By : Roger Ndaba
;----------------------------;

global	_ft_strchr
global	ft_strchr

section .text

_ft_strchr:
ft_strchr:
	push	rbp
	mov		rbp, rsp
	push	rdi

chr_loop:
	cmp		BYTE [rdi], sil
	jz		found
	cmp		BYTE [rdi], 0
	jz		not_found
	inc		rdi
	jmp		chr_loop

not_found:
	mov		rax, 0
	jmp		end

found:
	mov		rax, rdi

end:
	pop		rdi
	mov		rsp, rbp
	pop		rbp
	ret
