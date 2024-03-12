przy okazji przekazywanie wielu zmiennych do funkcji 
1 dla x=2
2 dla 2\<x<4
3 dla x =1 
4 dla 4\<x<6

```asm
	zerujpod proc; rcx = tab**, rdx = n

	mov r8, rdx

	petlaN:
	mov r9, r8
	mov r10, [rcx + 8*rdx - 8]
	petlaM:
	cmp r9, rdx
	jge pomin
	mov dword ptr [r10 + 4*r9 - 4], 0
	pomin:
	dec r9
	jnz petlaM
	dec rdx
	jnz petlaN
	ret
	zeruj1 endp
	
instrukcjaWyboru proc uses rbx rsi, a:dword, b:dword, c:dword,

x:dword, i:dword ; rcx = a, rdx = b, r8 = c, r9 = x, stos = i


movsxd r10, r9

cmp r10,2

je pierwszyPrzypadek

cmp r10,1

je trzeciPrzypadek

cmp r10,2

jg 24


24:
cmp r10,4
jl przpadekdwa
cmp r10,4
jg przpadek4


jmp koniec

	durzotesty proc a:qword,b:qword,c:qword,d:qword,e:qword,f:qword,g:qword,h:qword
	mov rax,rcx
	mov r10, rdx
	imul  r10
	mov rbx,r8
	sub rbx,r9
	add rax,rbx

	mov r8,rax
	mov rax,e
	sub rax,f
	mov r9,g
	add r9,h
	mov rdx,0
	div r9
	sub r8,rdx
	mov rax,r8
	ret
	durzotesty endp 

	rounding proc ;rcx liczba rdx dzielink
	mov r9,2
	mov rax,rcx
	mov r8,rdx
	mov rdx,0
	div r8
	imul rdx, r9
	cmp rdx,r8
	jge winc
	ret
	winc:
	add rax,1
	ret


	rounding endp





	cmovzad proc
	cmp rcx,rdx
	cmovle rax,rcx
	cmovle r8,rdx
	cmp rcx,rdx
	cmovge rax,rdx
	cmovge r8,rcx
	mov rdx,0
	imul r8,r8
	sub rax,r8
	ret
	cmovzad endp


	public queenscock ;rcx to cock rdx to i, r8 to j
	queenscock proc
		mov r11,0 ; przygotowywujemy do zastampiania 
		kol:
		mov  r9,[rcx+rdx*8-8]; wrzucamy tablice do r9
		bt rdx,0
		jc nie
		mov r10,1
		jmp wie
		nie:
		mov r10,0		
		wie:		
		mov [r9+8*r10-8],r11
		add r10,2
		cmp r10,r8
		jle wie
		mov [rcx+rdx*8-8],r9
		dec rdx
		jnz kol
		ret
	queenscock endp


	public vector
	vector proc 
	imul rcx,rdx
	mov rax,0
	kek:
	add rax,[r8+rcx*8-8]

	loop kek
	ret
	vector endp
	

```