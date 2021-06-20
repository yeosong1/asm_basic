section	.text
	global	_ft_strcpy

_ft_strcpy:						; rsi(src), rdi(dest)
	mov	rcx, 0
	cmp	rsi, 0					; src string == NULL
	je	exit
	jmp	loopcopy

loopcopy:
	mov	bl, BYTE[rsi + rcx]		; src의 값 + 0 주소 위치 값을 bl에 저장
	mov	BYTE[rdi + rcx], bl		; dest의 첫 위치에 src 저장 (복사)
	inc	rcx						; index +1 한 것
	cmp	bl, 0					; bl의 저장한 문자열이 NULL이냐?
	je	exit					; 종료
	jmp	loopcopy				; 아니라면 strcpy loop
	
exit:
	mov	rax, rdi				; 복사한 값 rax에 저장하고 return
	ret

; char	*ft_strcpy(char *dest, const char *src)
; {
; 	int		i
	
; 	i = 0;
; 	while (src[i] != 0)
; 	{
; 		dest[i] = src[i];
; 		i++;
; 	}
; 	dest[i] = src[i];
; 	return (dest);
; }