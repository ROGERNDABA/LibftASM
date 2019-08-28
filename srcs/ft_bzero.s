;----------------------------;
; ft_bzero.s
; Created By : Roger Ndaba
;----------------------------;

global _ft_bzero
global ft_bzero

section .text

_ft_bzero:
ft_bzero:
	cmp rsi, 0
	je end
	mov byte[rdi], 0
	inc rdi
	dec rsi
	jmp _ft_bzero

end:
	ret


