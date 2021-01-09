section .text
	global	_ft_strlen

_ft_strlen:
	mov rax, 0
	jmp loopcount

loopcount:			
	cmp BYTE[rdi + rax], 0		; if 동일 cmp 비교
	je	exit					; cmp와 비교한 값이 0이라면 exit로 가라
	inc rax						; rax++
	jmp loopcount				; lencount loop

exit:
	ret							; ft_strlen()함수 호출한 곳 아래 코드로 내려감

; size_t	ft_strlen(const char *str)
; {
; 	int		len;
; 
; 	len = 0;
; 	while (*src++)
; 		len++;
; 	return (len);
; }
