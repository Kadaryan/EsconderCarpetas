@echo off
Title Administracion Carpetas By Kadaryan
Color 0a
:principio
echo.
echo                      111111-----------------------111111
echo                      11                               11
echo                      11--Administracion de Carpetas---11
echo                      11----------By Kadaryan----------11
echo                      11                               11
echo                      111111-----------------------111111
echo.
echo.
echo 1.Crear Carpeta
echo.
echo 2.Esconder Carpeta
echo.
echo 3.Revelar Carpeta
echo.
echo 4.Salir
echo.
echo.
SET /P a=Que Desea Hacer?:

if %a%==1 (goto :1)
if %a%==2 (goto :2)
if %a%==3 (goto :3)
if %a%==4 (exit)

:1
cls
echo.
echo                      111111-----------------------111111
echo                      11                               11
echo                      11------Crear una Carpeta...-----11
echo                      11----------By Kadaryan----------11
echo                      11                               11
echo                      111111-----------------------111111
echo.
echo.
SET /P carpeta=Que Nombre Desea Para su Carpeta?:
echo 1 Para 
md %carpeta%
msg * Carpeta Creada
cls
goto principio


:2
cls
echo.
echo                      111111-----------------------111111
echo                      11                               11
echo                      11-----Esconder una Carpeta.-----11
echo                      11----------By Kadaryan----------11
echo                      11                               11
echo                      111111-----------------------111111
echo.
echo.
SET /P nombre=Nombre de la Carpeta que desea Esconder:
attrib +h %nombre%
msg * Carpeta Oculta
cls
goto principio
:3
cls
echo.
echo                      111111-----------------------111111
echo                      11                               11
echo                      11--------Revelar Carpeta--------11
echo                      11----------By Kadaryan----------11
echo                      11                               11
echo                      111111---(Pass:a1b2c3d4e5)---111111
echo.
echo.
SET /P recuperar=Nombre de la Carpeta que desea Revelar:
if exist %recuperar% (SET /P pass=Cual es el Password?) else msg * La Carpeta no Existe & goto principio
if %pass%==a1b2c3d4e5 (attrib -h %recuperar% & msg * Carpeta Revelada) else msg * Password Incorrecto
cls
goto principio


