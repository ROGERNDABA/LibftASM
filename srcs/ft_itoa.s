
;----------------------------;
; ft_itoa.s
; Created By : Roger Ndaba
;----------------------------;

global	_ft_itoa

extern	_malloc
extern	_ft_strlen

section .text

_ft_itoa:
	push	rdi
	call	_ft_strlen
	; mov		ah, byte[rdi]
	; cmp		ah, 0x0
	; je		end
	; mov		rax, 0
	; ret

end:
	ret
