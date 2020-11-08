section .text
	global _ft_strcmp
_ft_strcmp:
	mov rax, 0				
	jmp loopcmp				; 없어도 알아서 아래 실행되지만 이해를 돕기위해
loopcmp:					; rdi(s1), rsi(s2)
	cmp BYTE[rdi + rax], 0
	je	exit
	cmp BYTE[rsi + rax], 0
	je	exit				; 예외처리 String s1 or s2 == NULL
	mov dl, BYTE[rdi + rax] ; 문자 비교
	cmp dl, BYTE[rsi, rax]
	jne exit				; jump not equal 
	inc rax
	jmp loopcmp
exit:
	mov dl, BYTE[rdi + rax]
	sub dl, BYTE[rsi + rax]	; 최종 문자열 빼기 return
	movsx rax, dl			; rax에 복사후 return ,movsx : dl이 음수일 때 0 비트를 1로 모두 채워주기 위해서
	ret
