section .text
	global _ft_write
	extern ___error

_ft_write:
	mov		rax, 0x2000004	; Mac systemcall table No.4 : write
	syscall					; syscall의 write가 rax으로 return 됨
	jc		err				; jump carry, carry flag가 1이 되면 jump하라 
	ret						; https://velog.io/@sohi_5/%EC%BA%90%EB%A6%AC%EC%99%80-%EC%98%A4%EB%B2%84%ED%94%8C%EB%A1%9C%EC%9A%B0-%ED%99%95%EC%8B%A4%ED%95%98%EA%B2%8C-%EA%B5%AC%EB%B6%84%ED%95%98%EA%B8%B0

err:
	push	rax				; rax의 메모리주소 값이 스택 메모리 저장 
	call	___error		; ___error(rdi, rsi, rdx)
	pop		qword[rax]		; ___error의 return 값의 메모리 주소를 jump carry 메모리 주소로 변경
	mov		rax, -0x1		; return (-1)		
	ret