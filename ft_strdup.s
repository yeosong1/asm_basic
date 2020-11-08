section .text
	global _ft_strdup
	extern _malloc
	extern _ft_strlen
	extern _ft_strcpy

_ft_strdup:
	push rdi			; rdi = ft_stsrdup(str)
	call _ft_strlen		; ft_strlen(rdi), return(rax)
	mov rdi, rax		; rdi = rax = ft_strlen(str)
	call _malloc		; malloc(rdi), return(rax), 복사된 문자열 *rdi 가장 위 스택에 있음
	cmp rax, 0			; malloc 실패 check	/ return(rax), 
	je exit
	pop rsi				; malloc으로 스택에 할당된 메모리를 rsi라는 이름으로 저장
	mov rdi, rax		; rdi = dest		;https://stackoverflow.com/questions/4584089/what-is-the-function-of-the-push-pop-instructions-used-on-registers-in-x86-ass
	sub rsp, 8			; 스택메모리 포인터(제일 늦게들어온) 곳에서 8만큼 메모리 이동, ft_strcpy 실행하려고
	call _ft_strcpy		; rdi
	add rsp, 8
	jmp exit
exit:
	ret