#include <MsgBoxConstants.au3>
#include <StringConstants.au3>
#include <File.au3>
#include <IE.au3>

Global $Var_1
Global $Var_2
Global $Var_3
Global $Var_4
Global $Var_5
Global $Var_6

Local $sStr1 = "Hello"
Local $sStr2 = "hello"

Global $sStr3 = "Mundo"
Global $sStr4 = "Todas as categorias"
Global $sStr5 = "Pesquisa na Web"


; ESC Exit Key => capture and pass along a keypress
HotKeySet("{Esc}", "captureEsc")
Func captureEsc()
    ; ... can do stuff here
    HotKeySet("{Esc}")
    Send("{Esc}")
    HotKeySet("{Esc}", "captureEsc")
    Exit
 EndFunc
 WinActivate("Untitled")
; insert other send() code here

; Compare two strings without using case sensitivity.
;Local $iCmp = StringCompare($sStr1, $sStr2)
;MsgBox($MB_SYSTEMMODAL, "", _
;    "Comparing '" & $sStr1 & "' To '" & $sStr2 & "'" & @CRLF & _
;    "StringCompare Result (mode $STR_NOCASESENSE): " & $iCmp)

; Compare two strings with using case sensitivity.
;$iCmp = StringCompare($sStr1, $sStr2, $STR_CASESENSE)
;MsgBox($MB_SYSTEMMODAL, "", _
;    "Comparing '" & $sStr1 & "' To '" & $sStr2 & "'" & @CRLF & _
;    "StringCompare Result (mode $STR_CASESENSE): " & $iCmp)



$file = "C:\Users\thais\Downloads\yourfile.txt"
FileOpen($file, 0)

For $i = 1 to _FileCountLines($file)
;busca linha dentro do arquivo
	$line = FileReadLine($file, $i)
;faz a definição do split
    $split = StringSplit($line,"|")
	For $i = 1 to $split[0]

	   If $i = 1 Then
        $Var_1 = $split[$i]
	   EndIf
	   If $i = 2 Then
        $Var_2 = $split[$i]
	   EndIf
	   If $i = 3 Then
        $Var_3 = $split[$i]
	   EndIf
	   If $i = 4 Then
        $Var_4 = $split[$i]
	   EndIf
	   If $i = 5 Then
        $Var_5 = $split[$i]
	   EndIf
	   If $i = 6 Then
        $Var_6 = $split[$i]
	   EndIf

	   Consolewrite("$split["&$i&"] = "&$split[$i]&@CRLF)
    Next
;msgbox(0,'','the line ' & $i & ' is ' & $line)

Consolewrite($Var_1)
Consolewrite($Var_6)
Consolewrite($Var_2)
Consolewrite($Var_4)
Consolewrite($Var_5)
Consolewrite($Var_3)


; $Var_1 Variavel que define a URL
;ShellExecute("https://www.bing.com/")
ShellExecute("chrome.exe", "https://trends.google.com.br/trends/explore?q="&$Var_1&" --new-window --start") ;on screen 4 FUNCIONA --force-device-scale-factor=.86
;ShellExecute("https://trends.google.com.br/trends/explore?q="&$Var_1&" --new -window --start") ;Edge on screen 4 FUNCIONA --force-device-scale-factor=.86
Sleep(7200)
WinSetState("[ACTIVE]", "", @SW_MAXIMIZE)


; $Var_2 Variavel que define qual abrangencia de mundo ou país
; Compare two strings without using case sensitivity.
Local $iCmp2 = StringCompare($Var_2, $sStr3) ;, $STR_NOCASESENSEBASIC)
Consolewrite(" VALOR comparando String1 "&$Var_2&" com String2 "&$sStr3&" "&$iCmp2&"  ")
If $iCmp2 = 0 Then
;Don't need change web
   Consolewrite("Don't need change web")
Else
   MouseClick("left",187,365,1) ; Chrome
;   MouseClick("left",164,346,1) ; Edge
Sleep(1000)
   Send($Var_2)
Sleep(1000)
;   Send("{ENTER}")
   MouseClick("left",151,433,1)
EndIf

Sleep(2000)


; $Var_3 and $Var_4 bring a initial date and final date
MouseClick("left",356,369,1) ; Chrome
Sleep(700)
MouseClick("left",356,679,1) ; Chrome
Sleep(700)
MouseClick("left",755,393,1) ; Chrome
Send("{SHIFTDOWN}{HOME}{SHIFTUP}{DEL}")
Sleep(500)
Send($Var_3)
Sleep(700)
MouseClick("left",755,441,1) ; Chrome
Send("{SHIFTDOWN}{HOME}{SHIFTUP}{DEL}")
Sleep(500)
Send($Var_4)
Sleep(700)
MouseClick("left",842,580,1) ; Chrome


Sleep(2000)


; Verificar se é diferente de "Todas as categorias" se for diferente colocamos a categoria de interesse
$iCmp3 = StringCompare($Var_5, $sStr4) ;, $STR_NOCASESENSEBASIC)
;Consolewrite("comparando String "&$iCmp&" teste "&$Var_2&" Don't need change web")
If $iCmp3 = 0 Then
   ;Don't need change web
   Consolewrite("Don't need change web")
Else
   ; $Var_5 bring a categorical pet, cars, ...
   MouseClick("left",570,367,1) ; Chrome
   Sleep(700)
   Send($Var_5)
   Sleep(700)
   MouseClick("left",863,369,1) ; Chrome
   Sleep(700)
;   Send($Var_5)
   Send("{ENTER}")
   Sleep(700)
EndIf


;; Verificar se é diferente de "Pesquisa na Web" se for diferente colocamos a categoria de interesse
;$iCmp4 = StringCompare($Var_6, "Pesquisa na Web") ;, $STR_NOCASESENSEBASIC)
;;Consolewrite("comparando String "&$iCmp&" teste "&$Var_2&" Don't need change web")
;If $iCmp4 = 0 Then
;   ;Don't need change web
;   Consolewrite("Don't need change web")
;Else
;   ; $Var_6 bring a web search type image, news, youtube, ...
;   MouseClick("left",748,335,1) ; Chrome
;   Sleep(700)
;   Send($Var_6)
;   Sleep(700)
;   MouseClick("left",785,430,1) ; Chrome
;EndIf


Sleep(5000)
;baixa .csv de coronavirus
MouseClick("left",1127,491,1)


Next
FileClose($file)
