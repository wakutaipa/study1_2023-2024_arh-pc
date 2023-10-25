---
## Front matter
title: "Шаблон отчёта по лабораторной работе №4"
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
fontsize: 12pt
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
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Цель данной лабораторной работы - освоить процедуры компиляции и сборки
программ, написанных на ассемблере NASM.

# Задание

1. Создание программы Hello world!
2. Работа с транслятором NASM
3. Работа с расширенным синтаксисом командной строки NASM
4. Работа с компоновщиком LD
5. Запуск исполняемого файла
6. Выполнение заданий для самостоятельной работы

# Выполнение лабораторной работы

**1. Создание программы Hello world!**

Создаю каталог для работы с программами на языке ассемблера NASM и перехожу в созданный каталог:

![Рис 1.0](/home/mwakutaipa/work/study/2023-2024/Архитектура компьютера/arch-pc/labs/lab04/report/image/1.png){#fig:001 width=70%}

Создаю текстовый файл с именем hello.asm и проверяю с помощью ls:

![Рис 1.1](/home/mwakutaipa/work/study/2023-2024/Архитектура компьютера/arch-pc/labs/lab04/report/image/2.0.png){#fig:001 width=70%}

Открываю созданный файл в текстовом редакторе gedit и вставляю в него программу для вывода "Hello world!":

![Рис 1.2](/home/mwakutaipa/work/study/2023-2024/Архитектура компьютера/arch-pc/labs/lab04/report/image/3.png){#fig:001 width=70%}

![Рис 1.3](/home/mwakutaipa/work/study/2023-2024/Архитектура компьютера/arch-pc/labs/lab04/report/image/2.1.png){#fig:001 width=70%}

**2. Работа с транслятором NASM**

Превращаю текст программы для вывода “Hello world!” в объектный код с помощью транслятора NASM, используя команду nasm -f elf hello.asm. Потом проверяю с помощью ls:

![Рис 2.0](/home/mwakutaipa/work/study/2023-2024/Архитектура компьютера/arch-pc/labs/lab04/report/image/5.png){#fig:001 width=70%}

![Рис 2.1](/home/mwakutaipa/work/study/2023-2024/Архитектура компьютера/arch-pc/labs/lab04/report/image/6.png){#fig:001 width=70%}

**3. Работа с расширенным синтаксисом командной строки NASM**

Ввожу команду, которая скомпилирует файл hello.asm в файл obj.o и проверяю с помощью ls:

![Рис 3.0](/home/mwakutaipa/work/study/2023-2024/Архитектура компьютера/arch-pc/labs/lab04/report/image/7.png){#fig:001 width=70%}

**4. Работа с компоновщиком LD**

Передаю объектный файл hello.o на обработку компоновщику LD, чтобы получить исполняемый файл hello и проверяю с помощью ls:

![Рис 4.0](/home/mwakutaipa/work/study/2023-2024/Архитектура компьютера/arch-pc/labs/lab04/report/image/8.png){#fig:001 width=70%}

Выполняю следующую команду (рис. 4.1). Исполняемый файл будет иметь имя main, т.к. после ключа -о было задано значение main. Объектный файл, из которого собран этот исполняемый файл, имеет имя obj.o:

![Рис 4.1](/home/mwakutaipa/work/study/2023-2024/Архитектура компьютера/arch-pc/labs/lab04/report/image/9.png){#fig:001 width=70%}

**5. Запуск исполняемого файла**

Запускаю на выполнение созданный файл hello:

![Рис 5.0](/home/mwakutaipa/work/study/2023-2024/Архитектура компьютера/arch-pc/labs/lab04/report/image/10.png){#fig:001 width=70%}

**6. Выполнение заданий для самостоятельной работы**

С помощью cp создаю копию файла hello.asm с именем lab4.asm:

![Рис 6.0](/home/mwakutaipa/work/study/2023-2024/Архитектура компьютера/arch-pc/labs/lab04/report/image/11.png){#fig:001 width=70%}

С помощью gedit открываю файл lab5.asm и вношу изменения в программу так, чтобы она выводила имя и фамилию:

![Рис 6.1](/home/mwakutaipa/work/study/2023-2024/Архитектура компьютера/arch-pc/labs/lab04/report/image/12.png){#fig:001 width=70%}

![Рис 6.2](/home/mwakutaipa/work/study/2023-2024/Архитектура компьютера/arch-pc/labs/lab04/report/image/13.png){#fig:001 width=70%}

Компилирую текст программы в объектный файл и проверяю с помощью ls, что файл lab4.o создан:

![Рис 6.3](/home/mwakutaipa/work/study/2023-2024/Архитектура компьютера/arch-pc/labs/lab04/report/image/14.png){#fig:001 width=70%}

Передаю объектный файл lab4.o на обработку компоновщику LD, чтобы получить файл lab4:

![Рис 6.4](/home/mwakutaipa/work/study/2023-2024/Архитектура компьютера/arch-pc/labs/lab04/report/image/15.png){#fig:001 width=70%}

Запускаю исполняемый файл lab4:

![Рис 6.5](/home/mwakutaipa/work/study/2023-2024/Архитектура компьютера/arch-pc/labs/lab04/report/image/16.png){#fig:001 width=70%}

Копирую файлы hello.asm и lab4.asm в локальный репозиторий с помощью cp:

![Рис 6.6](/home/mwakutaipa/work/study/2023-2024/Архитектура компьютера/arch-pc/labs/lab04/report/image/17.png){#fig:001 width=70%}

С помощью команд git add . и git commit добавляю файлы на GitHub:

![Рис 6.7](/home/mwakutaipa/work/study/2023-2024/Архитектура компьютера/arch-pc/labs/lab04/report/image/18.png){#fig:001 width=70%}

Отправляю файлы на сервер с помощью команды git push:

![Рис 6.8](/home/mwakutaipa/work/study/2023-2024/Архитектура компьютера/arch-pc/labs/lab04/report/image/19.png){#fig:001 width=70%}



# Выводы

При выполнении данной лабораторной работы я освоила процедуры компиляции и сборки программ, написанных на ассемблере NASM.

# Список литературы

[Архитектура ЭВМ](https://esystem.rudn.ru/pluginfile.php/2089084/mod_resource/content/0/%D0%9B%D0%B0%D0%B1%D0%BE%D1%80%D0%B0%D1%82%D0%BE%D1%80%D0%BD%D0%B0%D1%8F%20%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%B0%20%E2%84%964.%20%D0%A1%D0%BE%D0%B7%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%20%D0%B8%20%D0%BF%D1%80%D0%BE%D1%86%D0%B5%D1%81%D1%81%20%D0%BE%D0%B1%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%BA%D0%B8%20%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%20%D0%BD%D0%B0%20%D1%8F%D0%B7%D1%8B%D0%BA%D0%B5%20%D0%B0%D1%81%D1%81%D0%B5%D0%BC%D0%B1%D0%BB%D0%B5%D1%80%D0%B0%20NASM.pdf)
