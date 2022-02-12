@echo off
title Trabalho De SI - Raquel
mode 60,30
color 0a

:start
set winners=0
set defeats=0
set matches=0
cls
set /p username=Digite seu nome:
goto:sorteio

:sorteio
set /a cpuAttack = (%random% %%5) + 1

if %cpuAttack% == 1 (
set cpuAttack=PEDRA) 
if %cpuAttack% == 2 (
set cpuAttack=PAPEL)
if %cpuAttack% == 3 (
set cpuAttack=TESOURA)
if %cpuAttack% == 4 (
set cpuAttack=LARGATO)
if %cpuAttack% == 5 (
set cpuAttack=SPOCK)

:computerPlayer
cls
echo.
echo ------------------------------------------
echo   Jogador(a): %username%
echo ------------------------------------------
echo.
echo                  (o   o)
echo =============ooO===( )===Ooo==============
echo ------------------------------------------
echo   Bem-Vindo(a) ao JO-KEN-PO
echo ------------------------------------------
echo [1] PEDRA
echo [2] PAPEL
echo [3] TESOURA
echo [4] LAGARTO
echo [5] SPOCK
echo [E] ENCERRAR JOGO
echo [R] REGRAS
echo ==========================================
echo.
set /p attackValue=Escolha uma opcao:
if %attackValue% == 1 (goto:stoneAttack) 
if %attackValue% == 2 (goto:paperAttack) 
if %attackValue% == 3 (goto:shearsAttack) 
if %attackValue% == 4 (goto:lizardAttack) 
if %attackValue% == 5 (goto:spockAttack) 
if /i %attackValue% == E (goto:wishExit)
if /i %attackValue% == R (goto:rules) else (goto:invalidOpition) 
goto:computerPlayer

:stoneAttack
echo ------------------------------------------------
echo %username% escolheu: PEDRA
echo Computador escolheu: %cpuAttack%
echo -------------------------------------------------
if %cpuAttack% == PEDRA (goto:matches)
if %cpuAttack% == PAPEL (goto:defeats) 
if %cpuAttack% == TESOURA (goto:winners)
if %cpuAttack% == LARGATO (goto:winners)
if %cpuAttack% == SPOCK (goto:defeats)
goto:scoreboard)

:paperAttack
echo ------------------------------------------------
echo %username% escolheu:PAPEL
echo Computador escolheu: %cpuAttack%
echo -------------------------------------------------
if %cpuAttack% == PEDRA (goto:winners)
if %cpuAttack% == PAPEL (goto:matches)  
if %cpuAttack% == TESOURA (goto:defeats) 
if %cpuAttack% == LARGATO (goto:defeats) 
if %cpuAttack% == SPOCK (goto:winners)
goto:scoreboard)

:shearsAttack
echo ------------------------------------------------
echo %username% escolheu: TESOURA
echo Computador escolheu: %cpuAttack%
echo -------------------------------------------------
if %cpuAttack% == PEDRA (goto:defeats) 
if %cpuAttack% == PAPEL (goto:winners)
if %cpuAttack% == TESOURA (goto:matches)
if %cpuAttack% == LARGATO (goto:winners)
if %cpuAttack% == SPOCK (goto:defeats)
goto:scoreboard)


:lizardAttack
echo ------------------------------------------------
echo %username% escolheu: LARGATO
echo Computador escolheu: %cpuAttack%
echo -------------------------------------------------
if %cpuAttack% == PEDRA (goto:defeats) 
if %cpuAttack% == PAPEL (goto:winners)
if %cpuAttack% == TESOURA (goto:defeats) 
if %cpuAttack% == LARGATO (goto:matches) 
if %cpuAttack% == SPOCK (goto:winners)
goto:scoreboard)

:spockAttack
echo ------------------------------------------------
echo %username% escolheu: SPOCK
echo Computador escolheu: %cpuAttack%
echo -------------------------------------------------
if %cpuAttack% == PEDRA (goto:winners)
if %cpuAttack% == PAPEL (goto:defeats) 
if %cpuAttack% == TESOURA (goto:winners)
if %cpuAttack% == LARGATO (goto:defeats) 
if %cpuAttack% == SPOCK (goto:matches)
goto:scoreboard)


:winners
echo ================================================
echo            PARABENS... VOCE VENCEU!
echo ================================================
set /a winners=%winners% + 1
pause > nul 
goto:scoreboard

:defeats
echo ================================================
echo            QUE PENA... VOCE PERDEU 
echo ================================================
set /a defeats=%defeats% + 1
pause > nul 
goto:scoreboard

:matches
echo ================================================
echo             LEGAL... DEU EMPATE 
echo ================================================
set /a matches=%matches% + 1
pause > nul 
goto:scoreboard
	
:scoreboard
cls
echo.
echo ================================================
echo               PLACAR DO JOGO
echo ================================================
echo winners: %winners%
echo defeats: %defeats%
echo matches: %matches%
echo.
echo=================================================
pause > nul
set /p resp=DESEJA JOGAR NOVAMENTE ? [S/N]:
if /i %resp% == s (goto:sorteio) else (
goto:start)


:invalidOpition
echo.
echo -------------------------------------------------
echo                OPCAP INVALIDA
echo -------------------------------------------------
pause > nul 
goto:sorteio

:rules 
echo ===========================================================================
echo                               REGRAS DO JOGO 
echo ===========================================================================
echo PEDRA:
echo    Empata com Pedra; Ganha de Tesoura e Largato; Perde de Papel e Spock;
echo.
echo PAPEL:
echo    Empata com Papel; Ganha de Pedra e Spock; Perde de Tesoura e Largato;
echo.
echo TESOURA:
echo    Empata com Tesoura; Ganha de Largato e Papel; Perde de Pedra e Spock;
echo.
echo LARGATO:
echo    Empata com Largato: Ganha de Papel e Spock; Perde de Pedra e Tesoura;
echo.
echo SPOCK:
echo    Empata com Spock: Ganha de Pedra e Tesoura; Perde de largato e Papel;
echo.
echo ---------------------------------------------------------------------------
pause > nul
goto:computerPlayer

:wishExit
echo.
set /p resp=Deseja sair? [S/N]:
if /i %resp% == n (goto :computerPlayer ) else (exit)