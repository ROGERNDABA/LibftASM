;----------------------------;
; ft_strcat.s
; Created By : Roger Ndaba
;----------------------------;

global _ft_strcat

extern _ft_strlen

section .text

_ft_strcat:
	call	_ft_strlen
	mov		rcx, 0

cat_loop:
	cmp		byte[rsi+rcx], 0
	jz		end

end:
	ret
