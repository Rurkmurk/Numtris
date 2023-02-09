@echo off

rem ��� SCL �����

set output=numtris.scl

rem ���������, ������� ������������ ��� ��������
rem 32 �������, ����������� �����

set title="             NUMTRIS"

rem ������ �����������, ������ ����� �������
rem � ��������� ��� ���������� �� ������������� ������������
rem ��������������� � ����� resources.h
rem ��������� ����� ����� ������ ���� ������������

set palette.0=res\box.bmp

rem ������ �����������, ������ ����� �������

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

rem �������

set sprite.0=res\box.bmp

rem ����� �������� ��������, ���� �����
rem �� ����� ���� ������ ����

set soundfx=res\numtris.afb

rem ������, ������ ����� ������

set music.0=

rem ������

set sample.0=

call ..\evosdk\_compile.bat

call ..\evosdk\trdtool.exe + %output% savelbrd.0

@if %error% ==0 ..\evosdk\tools\unreal_evo\emullvd %output%