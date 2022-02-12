dim user, draw_op1, draw_op2, draw_op3, draw_op4, n
dim level1(5), level2(5), level3(5), level4(5)
dim audio, try, jump, res1, rights, level
dim word(4), word2(4), word3(4), word4(4), word5(4)
call load_audio

sub load_audio()
 set audio = createobject("SAPI.SPVOICE")
audio.volume = 100
audio.rate = 1
 call inicio
end sub

sub inicio()
draw_op1 = 0
rights = 0
jump = 1
Do
user = Ucase(inputbox("SEJA BEM-VINDO(A) AO SOLETRANDO" + vbNewLine & _
  "===================================" + vbNewLine & _
  "PREPARE-SE, APOS DIGITAR SEU NOME A PRIMEIRA PALAVRA SERA FALADA" + vbNewLine & _
  "===================================" + vbNewLine & _
  "DIGITE SEU NOME"))
if IsEmpty(user) then
  wscript.quit
end if
  user = Trim(user)
Loop Until user > ""
 call drawing
end sub

sub end_of_game()
audio.speak("VOCE PERDEU " & user & "")
n = (msgbox("QUE PENA, VOCE ERROU!" + vbNewLine & _
	"QUANTIDADE DE ACERTOS: " & rights & " DE 12" + vbNewLine & _
	"NIVEL " & level & "" + vbNewLine & _
	"DESEJA JOGAR NOVAMENTE? ", vbQuestion + vbYesNo, "FIM DE JOGO"))

if n = vbYes then
	call load_audio
else
    wscript.quit
end if	
end sub


sub drawing()
try = 1

if rights < 3 Then
level1(1) = "MELQUISEDEQUE"
level1(2) = "HERMENEUTICA"
level1(3) = "SICOMORO"
level1(4) = "ZURISADAI"
level1(5) = "AUTOCOMISERACAO"

for n = 1 to 5 step 1
randomize(second(time))
draw_op1 = int(rnd * 5) + 1
next

if word(1) = level1(draw_op1) Then

do while word(1) = level1(draw_op1)
	for n = 1 to 5 step 1
	randomize(second(time))
draw_op1 = int(rnd * 5) + 1
next
loop

word2(1) = level1(draw_op1)
				
elseif word(1) = word2(1) Then

do while word2(1) = level1(draw_op1)
	for n = 1 to 5 step 1
	randomize(second(time))
draw_op1 = int(rnd * 5) + 1
next
loop

word3(1) = level1(draw_op1)
				
elseif word(1) = word3(1) Then

do while word3(1) = level1(draw_op1)
	for n = 1 to 5 step 1
	randomize(second(time))
draw_op1 = int(rnd * 5) + 1
next
loop

word4(1) = level1(draw_op1)		
				
elseif word(1) = word4(1) Then

do while word4(1) = level1(draw_op1)
	for n = 1 to 5 step 1
	randomize(second(time))
draw_op1 = int(rnd * 5) + 1
next
loop

word5(1) = level1(draw_op1)
				
elseif word(1) = word5(1) Then

do while word5(1) = level1(draw_op1)
	for n = 1 to 5 step 1
	randomize(second(time))
draw_op1 = int(rnd * 5) + 1
next
loop	
end if

call speak

    elseif rights > 2 AND rights < 6 Then

level2(1) = "TRAVESSIA"
level2(2) = "FORNALHA"
level2(3) = "ARREBATAMENTO"
level2(4) = "PROPOSITO"
level2(5) = "DESTINO"

for n = 1 to 5 step 1
randomize(second(time))
draw_op2 = int(rnd * 5) + 1
next

if word(2) = level2(draw_op2) Then

do while word(2) = level2(draw_op2)
	for n = 1 to 5 step 1
	randomize(second(time))
draw_op2 = int(rnd * 5) + 1
next
loop

word2(2) = level2(draw_op2)
				
elseif word(2) = word2(2) Then

do while word2(2) = level2(draw_op2)
	for n = 1 to 5 step 1
	randomize(second(time))
draw_op2 = int(rnd * 5) + 1
next
loop

word3(2) = level2(draw_op2)
				
elseif word(2) = word3(2) Then

do while word3(2) = level2(draw_op2)
	for n = 1 to 5 step 1
	randomize(second(time))
draw_op2 = int(rnd * 5) + 1
next
loop
word4(2) = level2(draw_op2)		
				
elseif word(2) = word4(2) Then

do while word4(2) = level2(draw_op2)
	for n = 1 to 5 step 1
    randomize(second(time))
draw_op2 = int(rnd * 5) + 1
next
loop
word5(2) = level2(draw_op2)
				
elseif word(2) = word5(2) Then

do while word5(2) = level2(draw_op2)
	for n = 1 to 5 step 1
	randomize(second(time))
draw_op2 = int(rnd * 5) + 1
next
loop
end if
        
call speak

elseif rights > 5 AND rights < 9 Then

level3(1) = "NEOTESTAMENTARIA"
level3(2) = "DESMESURADAMENTE"
level3(3) = "KEMUEL"
level3(4) = "YESHUA"
level3(5) = "PENTATEUCO"

for n = 1 to 5 step 1
randomize(second(time))
draw_op3 = int(rnd * 5) + 1
next

if word(3) = level3(draw_op3) Then

do while word(3) = level3(draw_op3)
	for n = 1 to 5 step 1
	randomize(second(time))
draw_op3 = int(rnd * 5) + 1
next
loop
word2(3) = level3(draw_op3)
				
elseif word(3) = word2(3) Then

do while word2(3) = level3(draw_op3)
	for n = 1 to 5 step 1
	randomize(second(time))
draw_op3 = int(rnd * 5) + 1
next
loop
word3(3) = level3(draw_op3)
				
elseif word(3) = word3(3) Then

do while word3(3) = level3(draw_op3)
	for n = 1 to 5 step 1
	randomize(second(time))
draw_op3 = int(rnd * 5) + 1
next
loop
word4(3) = level3(draw_op3)		
				
elseif word(3) = word4(3) Then

do while word4(3) = level3(draw_op3)
	for n = 1 to 5 step 1
	randomize(second(time))
draw_op3 = int(rnd * 5) + 1
next
loop
word5(3) = level3(draw_op3)
				
elseif word(3) = word5(3) Then

do while word5(3) = level3(draw_op3)
	for n = 1 to 5 step 1
	randomize(second(time))
draw_op3 = int(rnd * 5) + 1
next
loop	
end if

call speak

elseif rights > 8 AND rights < 12 Then

level4(1) = "UNCAO"
level4(2) = "PROFECIA"
level4(3) = "SALVACAO"
level4(4) = "RESSUREICAO"
level4(5) = "CRUSCIFICACAO"

for n = 1 to 5 step 1
randomize(second(time))
draw_op4 = int(rnd * 5) + 1
next

if word(4) = level4(draw_op4) Then

do while word(4) = level4(draw_op4)
	for n = 1 to 5 step 1
	randomize(second(time))
draw_op4 = int(rnd * 5) + 1
next
loop
word2(4) = level4(draw_op4)
				
elseif word(4) = word2(4) Then

do while word2(4) = level4(draw_op4)
	for n = 1 to 5 step 1
	randomize(second(time))
draw_op4 = int(rnd * 5) + 1
next
loop
word3(4) = level4(draw_op4)
				
elseif word(4) = word3(4) Then

do while word3(4) = level4(draw_op4)
	for n = 1 to 5 step 1
	randomize(second(time))
draw_op4 = int(rnd * 5) + 1
next
loop
word4(4) = level4(draw_op4)		
				
elseif word(4) = word4(4) Then

do while word4(4) = level4(draw_op4)
	for n = 1 to 5 step 1
	randomize(second(time))
draw_op4 = int(rnd * 5) + 1
next
loop
word5(4) = level4(draw_op4)

elseif word(4) = word5(4) Then

do while word5(4) = level4(draw_op4)
	for n = 1 to 5 step 1
	randomize(second(time))
draw_op4 = int(rnd * 5) + 1
next
loop	
end if
    
call speak
end if
end sub

sub speak()
if rights < 3 Then
level = 1
audio.speak("A palavra e " + level1(draw_op1))
    call information_for_user
  elseif rights > 2 AND rights < 6 Then
level = 2
audio.speak("A palavra e " + level2(draw_op2))
    call information_for_user
  elseif rights > 5 AND rights < 9 Then
level = 3
audio.speak("A palavra e " + level3(draw_op3))
    call information_for_user
  elseif rights > 8 AND rights < 12 Then
level = 4
audio.speak("A palavra e " + level4(draw_op4))
    call information_for_user
  end if

end sub

sub information_for_user()
res1 = 0
res1 = Ucase(inputbox("NIVEL " & level & "" + vbNewLine + vbNewLine & _
    "DIGITE A PALAVRA OUVIDA" + vbNewLine + vbNewLine & _
    "NOME DO JOGADOR: " & user & "" + vbNewLine + vbNewLine & _
    "================================" + vbNewLine & _
    "[O]UVIR NOVAMENTE A PALAVRA" + vbNewLine & _
    "[P]ULAR A PALAVRA UMA UNICA VEZ" + vbNewLine & _
    "================================"))
if rights < 3 Then
	    call load_stage1
  elseif rights > 2 AND rights < 6 Then
        call load_stage2
  elseif rights > 5 AND rights < 9 Then
        call load_stage3
  elseif rights > 8 AND rights < 12 Then
        call load_stage4
  end if      
end sub

sub load_stage1()

if res1 = "O" Then
if try > 0 Then
try = try - 1
		call speak
      else
msgbox("VOCE JA OUVIU A PALAVRA DUAS VEZES!"), vbInformation + vbOKOnly, "ATENCAO"
		call information_for_user
	  end if	
	  
    elseif res1 = "P" Then
if jump > 0 Then
jump = jump - 1
        call drawing
	  else
msgbox("VOCE JA PULOU A PALAVRA!"), vbInformation + vbOKOnly, "ATENCAO"
		call information_for_user
      end if
	  
    elseif res1 = level1(draw_op1) Then

rights = rights + 1

word(1) = level1(draw_op1)

msgbox("PARABENS VOCE ACERTOU!" + vbNewLine & _
	    "QUANTIDADE DE ACERTOS: " & rights & " DE 12" + vbNewLine & _
	    "NIVEL 1"), vbInformation + vbOKOnly, "ATENCAO"	 

	  call drawing	  
	elseif res1 <> level1(draw_op1) Then
	  call end_of_game	  
    end if 
	
 call drawing
end sub

sub load_stage2()

if res1 = "O" Then
if try > 0 Then
try = try - 1
		call speak
      else
msgbox("VOCE JA OUVIU A PALAVRA DUAS VEZES!"), vbInformation + vbOKOnly, "ATENCAO"
		call information_for_user
	  end if	
	  
    elseif res1 = "P" Then
if jump > 0 Then
jump = jump - 1
        call drawing
	  else
msgbox("VOCE JA PULOU A PALAVRA!"), vbInformation + vbOKOnly, "ATENCAO"
		call information_for_user
      end if

    elseif res1 = level2(draw_op2) Then
rights = rights + 1
msgbox("PARABENS VOCE ACERTOU!" + vbNewLine & _
	  "QUANTIDADE DE ACERTOS: " & rights & " DE 12" + vbNewLine & _
	  "NIVEL 2"), vbInformation + vbOKOnly, "ATENCAO"

word(2) = level2(draw_op2)

	  call drawing  
	elseif res1 <> level2(draw_op2) Then
	  call end_of_game	  
    end if 

 call drawing
end sub

sub load_stage3()

if res1 = "O" Then
if try > 0 Then
try = try - 1
		call speak
      else
msgbox("VOCE JA OUVIU A PALAVRA DUAS VEZES!"), vbInformation + vbOKOnly, "ATENCAO"
		call information_for_user
	  end if	
	  
    elseif res1 = "P" Then
if jump > 0 Then
jump = jump - 1
        call drawing
	  else
msgbox("VOCE JA PULOU A PALAVRA!"), vbInformation + vbOKOnly, "ATENCAO"
		call information_for_user
      end if

    elseif res1 = level3(draw_op3) Then
rights = rights + 1
msgbox("PARABENS VOCE ACERTOU!" + vbNewLine & _
	  "QUANTIDADE DE ACERTOS: " & rights & " DE 12" + vbNewLine & _
	  "NIVEL 3"), vbInformation + vbOKOnly, "ATENCAO"

word(3) = level3(draw_op3) 
	  call drawing  
	elseif res1 <> level3(draw_op3) Then
	  call end_of_game	  
    end if 

 call drawing
end sub

sub load_stage4()

if res1 = "O" Then
if try > 0 Then
try = try - 1
		call speak
      else
msgbox("VOCE JA OUVIU A PALAVRA DUAS VEZES!"), vbInformation + vbOKOnly, "ATENCAO"
		call information_for_user
	  end if	
	  
    elseif res1 = "P" Then
if jump > 0 Then
jump = jump - 1
        call drawing
	  else
msgbox("VOCE JA pULOU A PALAVRA!"), vbInformation + vbOKOnly, "ATENCAO"
		call information_for_user
      end if

    elseif res1 = level4(draw_op4) Then
rights = rights + 1
msgbox("PARABENS VOCE ACERTOU!" + vbNewLine & _
	  "QUANTIDADE DE ACERTOS: " & rights & " DE 12" + vbNewLine & _
	  "NIVEL 4"), vbInformation + vbOKOnly, "ATENCAO"

word(4) = level4(draw_op4)
	  call drawing  
	elseif res1 <> level4(draw_op4) Then
	  call end_of_game	  
    end if 
	
 call venceu
end sub

sub venceu()
audio.speak("PARABENS, VOCE VENCEU O SOLETRANDO " & user & "")
n = 0
n = (msgbox("VOCE VENCEU " & user & "!" + vbNewLine & _
	"QUANTIDADE DE ACERTOS: " & rights & " " + vbNewLine & _
	"NIVEL " & level & "" + vbNewLine & _
	"DESEJA JOGAR NOVAMENTE? ", vbQuestion + vbYesNo, "FIM DE JOGO"))

if n = vbYes then
		call load_audio
	else
wscript.quit
	end if

end sub