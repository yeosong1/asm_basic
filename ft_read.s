	section	.text
	global	_ft_read
	extern	___error

_ft_read:
	mov		rax, 0x2000003		; syscall table No3, read
	syscall
	jc		err
	ret

err:
	push	rax
	call	___error
	pop		qword[rax]
	mov		rax, -0x1
	ret