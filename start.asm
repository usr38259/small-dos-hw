
model tiny
.code
extrn _main:near
org	100h
start:
	call	_main
	mov	ah,4ch
	int	21h

_bdos	proc	near
	push	bp
	mov	bp,sp
	mov	dx,[bp][6]
	mov	ah,[bp][4]
	mov	al,[bp][8]
	int	21h
	pop	bp
	ret
	endp

public	_bdos

end	start
