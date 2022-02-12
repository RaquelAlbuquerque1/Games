@echo off
title Trabalho De SI - Raquel
mode 60,30
color 0a

:inicio
echo.
set /a tentativas=6
set /a numero=(%random% %%49) + 1

:sorteador
set /a tentativas=%tentativas% - 1
cls
echo.
echo                   (o   o)
echo ===============ooO==( )==Ooo==============
echo ADIVINHE O NUMERO SORTEADO ENTRE 01 E 50
echo ------------------------------------------
echo   QUANTIDADE DE TENTAIVAS: %tentativas%
echo ------------------------------------------
echo ==========================================
echo.
set /p valorInserido=DIGITE O SEU PALPITE:

if %valorInserido% equ %numero% (goto ganhou)
if %tentativas% == 0 (goto perdeu)
if %valorInserido% GTR %numero% (goto maior)
if %valorInserido% LSS %numero% (goto menor) 

:ganhou
echo.
echo ------------------------------------------
echo         Parabens, voce ganhou!!!
echo      O numero sorteado foi: %numero%.
echo ------------------------------------------
echo.
set /p resp=DESEJA JOGAR NOVAMENTE? [S/N]
if /i %resp% == s (goto inicio) else (exit)
cls

:maior
echo.
echo ------------------------------------------
echo        Digite um numero menor !!!
echo ------------------------------------------
echo.
pause > nul
goto:sorteador
cls

:menor
echo.
echo ------------------------------------------
echo        Digite um numero maior !!!
echo ------------------------------------------
echo.
pause > nul
goto:sorteador
cls

:perdeu
echo.
echo ------------------------------------------
echo         Que pena, voce perdeu!!!
echo      O numero sorteado foi: %numero%.
echo ------------------------------------------
echo.
set /p resp=DESEJA TENTAR NOVAMENTE? [S/N]
cls
if /i %resp% == s (goto inicio) else (exit)
