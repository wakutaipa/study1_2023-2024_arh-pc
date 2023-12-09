%include 'in_out.asm'

SECTION .data
msg: DB 'Введите x: ',0
msg1: DB 'Функция: f(x)=5(2+x)', 0
Sum: DB 'Результат: ',0

SECTION .bss
x: RESB 80
ans: RESB 80

SECTION .text
global _start
_start:

mov eax, msg
call sprintLF

mov ecx,x
mov edx,80
call sread

mov eax,x
call atoi

call _sub

mov eax,msg1
call sprintLF

mov eax,Sum
call sprint
mov eax,[ans]
call iprintLF

call quit

_sub:
add eax,2
mov ebx,5
mul ebx
mov [ans],eax

ret

mov eax, esi 
call iprintLF
 
call quit
