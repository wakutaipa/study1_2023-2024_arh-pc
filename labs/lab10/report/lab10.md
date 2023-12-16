---
## Front matter
title: "Отчёт по лабораторной работе"
subtitle: "Дисциплина: Архитектура компьютера"
author: "Вакутайпа Милдред"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
fontsize: 14pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Приобретение навыков написания программ для работы с файлами.

# Выполнение лабораторной работы

Создаю каталог для программ лабораторной работы № 10, перехожу в него и создаю файлы lab10-1.asm, readme-1.txt и readme-2.txt:

![рис 1](image/1.png){#fig:001 width=70%}

Ввожу в файл lab10-1.asm текст программы (Программа записи в файл сообщения):

![рис 2](image/2.png){#fig:001 width=70%}

Создаю исполняемый файл и проверяю его работу:

![рис 3](image/3.png){#fig:001 width=70%}

![рис 4](image/4.png){#fig:001 width=70%}

С помощью chmod изменяю права доступа к файлу lab10-1, запретив его выполнение(u-x). При запуске, получаю сообщение "Persmission denied" (отказано в разрешении):

![рис 5](image/5.png){#fig:001 width=70%}

С помощью chmod изменяю права доступа к файлу lab10-1.asm с исходным текстом программы, добавляя права на исполнение(u+x), и проверяю с помощью ls -l:

![рис 6](image/6.png){#fig:001 width=70%}

При исполнении, программа изменяет доступ к файлу lab10-1. При запуске, программа добавляет введенный текст к старому введенному тексту, именно поэтому мы видим две строки:

![рис 7](image/7.png){#fig:001 width=70%}

В соответствии с вариантом 10, устанавливаю права доступа к файлу readme1.txt в символьном виде(r-- r-- rwx), а для файла readme-2.txt – в восмеричном виде(447). Проверяю правильность выполнения с помощью команды ls -l:

![рис 8](image/8.png){#fig:001 width=70%}

# Выполнение самостоятельной работы

Создаю файл task10.asm и в него пишу текст программы:

![рис 9](image/9.png){#fig:001 width=70%}

![рис 10](image/10.png){#fig:001 width=70%}

Создаю исполняемый файл. Программа выводит приглашения “Как Вас зовут?”, вводится с клавиатуры свои фамилию и имя, создает файл с именем name.txt, записывает в файл сообщение “Меня зовут”, допишет в файл строку введенную с клавиатуры и закрывает файл:

![рис 11](image/11.png){#fig:001 width=70%}


Код программы:

```
%include 'in_out.asm'

SECTION .data
one: db 'Как Вас зовут?',0
filename: db "name.txt", 0
msg: db 'Меня зовут '
theLength: equ $-msg

SECTION .bss
name: resb 64

SECTION .text
global _start

_start:
mov eax,one
call sprintLF

mov ecx, name
mov edx, 64
call sread

mov ecx, 0777o
mov ebx, filename
mov eax, 8
int 80h

mov ecx, 2
mov ebx, filename
mov eax, 5
int 80h

mov eax, 4
mov ebx,eax
mov ecx,msg
int 80h

mov ebx,esi
mov eax,6
int 80h
call quit
 
```
# Выводы

При выполнение лабораторной работы, я приобрела навыки написания программ для работы с файлами.

# Список литературы 

[Архитектура ЭВМ](https://esystem.rudn.ru/pluginfile.php/2089097/mod_resource/content/0/%D0%9B%D0%B0%D0%B1%D0%BE%D1%80%D0%B0%D1%82%D0%BE%D1%80%D0%BD%D0%B0%D1%8F%20%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%B0%20%E2%84%9610.%20%D0%A0%D0%B0%D0%B1%D0%BE%D1%82%D0%B0%20%D1%81%20%D1%84%D0%B0%D0%B9%D0%BB%D0%B0%D0%BC%D0%B8%20%D1%81%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B2%D0%B0%D0%BC%D0%B8%20Nasm.pdf)
