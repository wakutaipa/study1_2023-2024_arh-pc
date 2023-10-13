---
## Front matter
title: "Отчёт по лабораторной работе 3"
subtitle: "Дисциплина: Архитектура компьютера"
author: "Милдред Вакутайпа"

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

##  Цель работы

Целью работы является освоение процедуры оформления отчетов с помощью легковесного
языка разметки Markdown.

##  Задание

1. Заполнение отчета по выполнению лабораторной работы №4 с помощью
языка разметки Markdown
2. Задание для самостоятельной работы

##  Выполнение лабораторной работы
 
  Открываю терминал и перехожу в каталог курса сформированный при выполнении лабораторной работы 2:

![Рис 3.0](/home/mwakutaipa/Pictures/Screenshots/1.png){#fig:001 width=70%}

Обновляю локальный репозиторий, скачав изменения из удаленного репозитория с помощью команды git pull:

![Рис 3.1](/home/mwakutaipa/Pictures/Screenshots/2.png){#fig:001 width=70%}

Перехожу в каталог с шаблоном отчета по лабораторной работе 3 с помощью cd :

![Рис 3.2](/home/mwakutaipa/Pictures/Screenshots/3.png){#fig:001 width=70%}

Компилирую шаблон с использованием Makefile, вводя команду make:

![Рис 3.3](/home/mwakutaipa/Pictures/Screenshots/4.png){#fig:001 width=70%}

Проверяю корректность полученных файлов:

![Рис 3.4](/home/mwakutaipa/Pictures/Screenshots/10.png){#fig:001 width=70%}

Удаляю полученный файлы с командой make clean и проверяю:

![Рис 3.5](/home/mwakutaipa/Pictures/Screenshots/5.png){#fig:001 width=70%}

![Рис 3.6](/home/mwakutaipa/Pictures/Screenshots/6.png){#fig:001 width=70%}

Открываю файл report.md и изучаю его:

![Рис 3.7](/home/mwakutaipa/Pictures/Screenshots/12.png){#fig:001 width=70%}

Копирую файл с новым названием с помощью cp:

![Рис 3.8](/home/mwakutaipa/Pictures/Screenshots/7.png){#fig:001 width=70%}

Заполняю отчет с помощью Markdown в скопированном файле:

![Рис 3.9](/home/mwakutaipa/Pictures/Screenshots/8.png){#fig:001 width=70%}


##  Задание для самостоятельной работы

1. Перехожу в директорию lab02/report с помощью cd, чтобы там заполнять
отчет по второй лабораторной работе:

![Рис 4.0](/home/mwakutaipa/Pictures/Screenshots/ex1.png){#fig:001 width=70%}

Там превращаю существующий .odt файл в .md файл:

![Рис 4.1](/home/mwakutaipa/Pictures/Screenshots/ex2.png){#fig:001 width=70%}

Открываю файл с помощью gedit и начинаю заполнять отчет:

![Рис 4.2](/home/mwakutaipa/Pictures/Screenshots/ex3.png){#fig:001 width=70%}

![Рис 4.3](/home/mwakutaipa/Pictures/Screenshots/ex4.png){#fig:001 width=70%}

Удаляю предыдущий файл отчета:

![Рис 4.4](/home/mwakutaipa/Pictures/Screenshots/ex5.png){#fig:001 width=70%}

Компилирую файл с отчетом по лабораторной работе и проверяю:

![Рис 4.5](/home/mwakutaipa/Pictures/Screenshots/ex6.png){#fig:001 width=70%}

![Рис 4.6](/home/mwakutaipa/Pictures/Screenshots/ex7.png){#fig:001 width=70%}

Удаляю report.docx и report.pdf:

![Рис 4.7](/home/mwakutaipa/Pictures/Screenshots/ex8.png){#fig:001 width=70%}

2. Добавляю файлы на GitHub с помощью git add и сохраняю изменения с помощью commit. Отправлялю файлы на сервер с помощью команды git push: 

![Рис 4.8](/home/mwakutaipa/Pictures/Screenshots/ex9.png){#fig:001 width=70%}

##  Выводы

В результате выполнения данной лабораторной работы я освоила процедуры оформления отчетов с помощью языка разметки Markdown

##  Список литературы
[Архитектура ЭВМ](https://esystem.rudn.ru/pluginfile.php/2089083/mod_resource/content/0/%D0%9B%D0%B0%D0%B1%D0%BE%D1%80%D0%B0%D1%82%D0%BE%D1%80%D0%BD%D0%B0%D1%8F%20%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%B0%20%E2%84%963.%20%D0%AF%D0%B7%D1%8B%D0%BA%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%82%D0%BA%D0%B8%20.pdf)

