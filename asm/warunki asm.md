przy okazji przekazywanie wielu zmiennych do funkcji 
1 dla x=2
2 dla 2\<x<4
3 dla x =1 
4 dla 4\<x<6

```asm
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




```