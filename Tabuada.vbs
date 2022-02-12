dim numberDrawOperator,numberForOperation1,numberForOperation2,symbolOperation(4),answerVBQuestion,operation,userScore,userRight
dim userAnswerOperation,operatorDraw,drawnNumber1,drawnNumber2,username
call start

sub start()
Do
 username=Ucase(inputbox("OLA, SEJA BEM-VINDO(A) AO JOGO  DA TABUADA!"+ vbnewline &_
 "QUAL SEU NOME?"))
 if IsEmpty(username) then
 wscript.quit
 end if
 username = Trim(username)
Loop Until username > ""
call game
end sub

sub userScoreControl()
userScore=0
call game
end sub

sub bye()
answerVBQuestion=msgbox("VOCE DESEJA JOGAR NOVAMENTE "& username &" ?",vbquestion + vbyesno,"ATENCAO")
 if answerVBQuestion=vbyes then
 call userScoreControl
 else
 wscript.quit
 end if	
end sub

sub game()

symbolOperation(1) = "+"
symbolOperation(2) = "-"
symbolOperation(3) = "x"
symbolOperation(4) = "/"


for numberDrawOperator=1 to 4 step 1
	randomize(second(time))
	operatorDraw=int(rnd * 4) + 1
next

for numberForOperation1=1 to 10 step 1
	randomize(second(time))
	drawnNumber1=int(rnd * 10) + 1
next

for numberForOperation2=1 to 10 step 1
	randomize(second(time))
	drawnNumber2=int(rnd * 10) + 1
next

if operatorDraw = 1 then
operation = drawnNumber1 + drawnNumber2
elseif operatorDraw = 2 then
operation = drawnNumber1 - drawnNumber2
elseif  operatorDraw = 3 then
operation = drawnNumber1 * drawnNumber2
else
operation = drawnNumber1 \ drawnNumber2
end if

userAnswerOperation=cdbl(inputbox(" ACERTE O CALCULO MATEMATICO " + vbnewline & _
 "============================" + vbnewline &_
 "PONTUCAO DE "& username &": " & userScore & ""+ vbnewline &_
 "RESOLVA : "& drawnNumber1 &" "& symbolOperation(operatorDraw) &" "& drawnNumber2 &" = ???"))

if userAnswerOperation = operation then
userScore = userScore+1
userRight=(msgbox("EBA!!! VOCE ACERTOU!" + vbnewline &_
"QUANTIDADE DE ACERTOS: "& userScore & "", vbinformation + vbOKOnly,"AVISO"))
call game

else
userScore = userScore
userRight=(msgbox("QUE PENA!VOCÊ ERROU" + vbnewline &_
"QUANTIDADE DE ACERTOS: "& userScore & "", vbCritical,"AVISO"))

if userScore = 0 then
userRight=(msgbox("QUE PENA, VOCE NAO ACERTOU NENHUM CALCULO, " & username &" =( ", vbinformation + vbOKOnly,"AVISO"))
call bye
elseif userScore > 0 AND userScore <= 5 then
userRight=(msgbox("NADA MAL " & username &", VOCE ACERTOU " & userScore & " CALCULOS =) ",vbinformation  + vbOKOnly, "AVISO"))
call bye
elseif userScore > 5 then
userRight=(msgbox("PARABENS " & username &", VOCE E UM GENIO DA MATEMATICA, VOCE ACERTOU " & userScore & " CALCULOS =D ",vbinformation + vbOKOnly, "AVISO")) 
call bye
end if
end if 
end sub