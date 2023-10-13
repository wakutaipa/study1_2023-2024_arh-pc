---
## Front matter
title: "Отчёт по лабораторной работе 2"
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

## Цель работы

Целью работы является изучить идеологию и применение средств контроля
версий. Приобрести практические навыки по работе с системой git.



## Задание

1. Настройка GitHub.

1. Базовая настройка Git.

1. Создание SSH-ключа.

1. Создание рабочего пространства и репозитория курса на основе
шаблона.

1. Создание репозитория курса на основе шаблона.

1. Настройка каталога курса.



## Выполнение лабораторной работы

3.1. Настройка GitHub

Создаю учетную запись на сайте GitHub. Далее я заполнила основные данные
учетной записи:

![Рис 3.1.0](/home/mwakutaipa/Pictures/Screenshots/e.png){width="8.202cm"
height="5.133cm"}


![Рис 3.1.1](/home/mwakutaipa/Pictures/Screenshots/f.png){width="8.07cm"
height="6.456cm"}


3.2. Базовая настройка Git

Открываю терминал и устанавливаю git с помощью sudo apt-get
install git:

![Рис 3.2.0](/home/mwakutaipa/Pictures/Screenshots/g.png){width="17cm"
height="7.489cm"}

Потом делаю предварительную конфигурацию git. Ввожу команду git config
--global user.name "", указывая свое имя и команду git config --global
user.email "work@mail", указывая в ней электронную почту мою:

![Рис 3.2.1](/home/mwakutaipa/Pictures/Screenshots/h.png){width="17cm"
height="1.392cm"} 

Настраиваю utf-8 в выводе сообщений git и Задаю имя «master» для
начальной ветки:

![Рис 3.2.2](/home/mwakutaipa/Pictures/Screenshots/i.png){width="17cm"
height="1.401cm"}

Задаю параметр autocrlf со значением input и параметр safecrlf со
значением warn:

![Рис 3.2.3](/home/mwakutaipa/Pictures/Screenshots/j.png){width="17cm"
height="1.401cm"}

3.3. Создание SSH-ключа

Для последующей идентификации пользователя на сервере репозиториев
необходимо сгенерировать пару ключей (приватный и открытый). Для этого
использую команду ssh-keygen -C "Имя , work@email":

![Рис 3.3.0](/home/mwakutaipa/Pictures/Screenshots/k.png){width="17cm"
height="10.47cm"} 

Xclip команд который помагает скопировать любой текст через терминал.
Устанавливаю xclip с помощью команды sudo apt install xclip:

![Рис 3.3.1](/home/mwakutaipa/Pictures/Screenshots/l.png){width="17cm"
height="8.65cm"} 

Копирую открытый ключ из директории, в которой он был сохранен, с
помощью xclip:

![Рис 3.3.2](/home/mwakutaipa/Pictures/Screenshots/m.png){width="15.928cm"
height="1.323cm"}

Открываю браузер, захожу на сайт GitHub. Открываю свой профиль и выбираю
страницу «SSH and GPG keys». Нажимаю кнопку «New SSH key». Вставляю
скопированный ключ в поле «Key». В поле Title указываю имя для ключа.
Нажимаю «Add SSH-key», чтобы завершить добавление ключа:

![Рис 3.3.3](/home/mwakutaipa/Pictures/Screenshots/n.png){width="14.614cm"
height="5.5cm"}

*3.4. Создание рабочего пространства и репозитория курса на основе
шаблона*

Создаю директорию, рабочее пространство, с помощью mkdir. Проверяю с
помощью ls, действительно ли были созданы каталоги:

![Рис 3.4.0](/home/mwakutaipa/Pictures/Screenshots/o.png){width="17cm"
height="2.755cm"}

3.5. Создание репозитория курса на основе шаблона

Перехожу на станицу репозитория с шаблоном курса и выбираю «Use this
template»:

![Рис 3.5.0](/home/mwakutaipa/Pictures/Screenshots/p.png){width="17cm"
height="4.411cm"}

В открывшемся окне задаю имя репозитория (Repository name):
study1_2023--2024_arhpc и создаю репозиторий, нажимаю на кнопку «Create
repository from template»:

![Рис 3.5.1](/home/mwakutaipa/Pictures/Screenshots/q.png){width="15.196cm"
height="8.347cm"}

Через терминал перехожу в созданный каталог курса с помощью cd:

![Рис 3.5.2](/home/mwakutaipa/Pictures/Screenshots/r.png){width="17cm"
height="1.101cm"}

Клонирую созданный репозиторий с помощью команды git clone \-- recursive
git@github.com:/study_2023--2024_arh-pc.git arch-pc:

![Рис 3.5.3](/home/mwakutaipa/Pictures/Screenshots/s.png){width="17cm"
height="0.956cm"}

3.6. Настройка каталога курса

Перехожу в каталог arch-pc с помощью cd:

![Рис 3.6.0](/home/mwakutaipa/Pictures/Screenshots/t.png){width="17cm"
height="1.399cm"}

Удаляю package.json с помощью rm:

![Рис 3.6.1](/home/mwakutaipa/Pictures/Screenshots/u.png){width="17cm"
height="1.399cm"}

Создаю необходимые каталоги с помощью echo:

![Рис 3.6.2](/home/mwakutaipa/Pictures/Screenshots/v.png){width="17cm"
height="1.399cm"}

Отправляю созданные каталоги на сервер с git add ., git commit и git
push:

![Рис 3.6.3](/home/mwakutaipa/Pictures/Screenshots/w.png){width="17cm"
height="8.627cm"}

![Рис 3.6.4](/home/mwakutaipa/Pictures/Screenshots/x.png){width="17cm"
height="5.152cm"}

Проверяю правильность выполнения работы в локальном репозетории и на
GitHub:

![Рис 3.6.5](/home/mwakutaipa/Pictures/Screenshots/y.png){width="13.196cm"
height="4.537cm"}

![Рис 3.6.6](/home/mwakutaipa/Pictures/Screenshots/z.png){width="11.673cm"
height="9.844cm"}



##  Выполнение заданий для самостоятельной работы   
4.1. Перехожу в директорию labs/lab02/report с помощью cd. Создаю в
каталоге файл для отчета по второй лабораторной работе с помощью touch:

![Рис 4.1.0](/home/mwakutaipa/Pictures/Screenshots/za.png){width="17cm"
height="1.397cm"}

Оформить отчет я смогу с помощью текстового редактора LibreOffice
Writer. Захожу в файл, который создала и выбираю Open With Other
Application, LibreOffice Writer, а потом создаю отчет lab2 (позже
сохраню его как lab2.odt):

![Рис 4.1.1](/home/mwakutaipa/Pictures/Screenshots/zb.png){width="11.21cm"
height="4.45cm"}


![Рис 4.1.2](/home/mwakutaipa/Pictures/Screenshots/zc.png){width="12.829cm"
height="4.045cm"}


![Рис 4.1.3](/home/mwakutaipa/Pictures/Screenshots/zd.png){width="11.582cm"
height="4.812cm"}


4.2. Надо скопировать отчеты по выполнению предыдущих лабораторных работ
в соответствующие каталоги созданного рабочего пространства. Для этого
использую cp и копирую из Downloads в соответствующий каталог созданного
рабочего пространства и проверяю с ls:

![Рис 4.2.0](/home/mwakutaipa/Pictures/Screenshots/ze.png){width="17cm"
height="3.12cm"}

4.3. Добавляю с помощью команды git add в созданные файлы:

![Рис 4.3.0](/home/mwakutaipa/Pictures/Screenshots/zf.png){width="17cm"
height="2.258cm"} 

![Рис 4.3.1](/home/mwakutaipa/Pictures/Screenshots/zg.png){width="17cm"
height="2.258cm"}


Сохраняю изменения с помощью git commit:

![Рис 4.3.2](/home/mwakutaipa/Pictures/Screenshots/zh.png){width="17cm"
height="2.584cm"}

Отправляю в центральный репозиторий сохраненные изменения командой git
push -f origin master:

![Рис 4.3.3](/home/mwakutaipa/Pictures/Screenshots/zi.png){width="17cm"
height="4.284cm"}

 
##  Выводы

    При выполнении данной лабораторной работы я изучила идеологию и
    применение средств контроля версий, а также приобрела практические
    навыки по работе с системой git.

 
##  Источники

[*Архитектура
ЭВМ*](https://esystem.rudn.ru/pluginfile.php/2089082/mod_resource/content/0/Лабораторная%20работа%20№2.%20Система%20контроля%20версий%20Git.pdf)

[*glebradchenko*](https://glebradchenko.susu.ru/courses/bachelor/engineering/2016/SUSU_SE_2016_REP_3_VCS.pdf)
