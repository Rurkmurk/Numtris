@echo off

rem имя SCL файла

set output=numtris.scl

rem сообщение, которое отображается при загрузке
rem 32 символа, стандартный шрифт

set title="             NUMTRIS"

rem список изображений, откуда брать палитры
rem в программе они вызываются по автоматически генерируемым
rem идентификаторам в файле resources.h
rem нумерация после точки должна быть возрастающей

set palette.0=res\box.bmp

rem список изображений, откуда брать графику

set image.0=res\back.bmp
set image.1=res\box.bmp
set image.2=res\font.bmp
set image.3=res\best.bmp
set image.4=res\gameover.bmp
set image.5=res\intro.bmp
set image.6=res\pressspace.bmp
set image.7=res\pressspace0.bmp
set image.8=res\rotor_en.bmp
set image.9=res\rotor_dis.bmp

rem спрайты

set sprite.0=res\box.bmp

rem набор звуковых эффектов, если нужен
rem он может быть только один

set soundfx=res\numtris.afb

rem музыка, нужное число треков

set music.0=

rem сэмплы

set sample.0=

call ..\evosdk\_compile.bat

call ..\evosdk\trdtool.exe + %output% savelbrd.0

@if %error% ==0 ..\evosdk\tools\unreal_evo\emullvd %output%