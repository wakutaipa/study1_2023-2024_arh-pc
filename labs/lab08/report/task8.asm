%include 'in_out.asm'

SECTION .data
msg: DB 'Функция: f(x)=5(2+x)', 0
Sum: DB 'Результат: ',0
SECTION .text
global _start
_start:
mov eax, msg
call sprintLF

pop ecx         
pop edx        
sub ecx,1 
mov esi, 0
           
next:
cmp ecx,0h 
jz _end    
           
pop eax   
call atoi  
add eax,2
mov ebx,5
mul ebx
add esi,eax
loop next 

_end:

mov eax,Sum
call sprint

mov eax, esi 
call iprintLF
 
call quit
