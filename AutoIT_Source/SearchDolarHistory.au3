#include <MsgBoxConstants.au3>
#include <StringConstants.au3>
#include <File.au3>
#include <IE.au3>

;;;Behavior 1;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Search Dolar History ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;


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


ShellExecute("chrome.exe", "https://www.bcb.gov.br/estabilidadefinanceira/historicocotacoes --new-window --start") ;on screen 4 FUNCIONA --force-device-scale-factor=.86
Sleep(5000)
WinSetState("[ACTIVE]", "", @SW_MAXIMIZE)

Sleep(500)
;rejeitar cook
;MouseClick("left",750,665,1)

Sleep(500)
MouseClick("left",396,530,1) ; Chrome
Sleep(500)
Send("{SHIFTDOWN}{HOME}{SHIFTUP}{DEL}")
Sleep(500)
Send("20062023") ;Data Inicial 20/06/2023
;Send($Var_3)

Sleep(500)
MouseClick("left",396,556,1) ; Chrome
Sleep(500)
Send("{SHIFTDOWN}{HOME}{SHIFTUP}{DEL}")
Sleep(500)
Send("20092023") ;Data Final 20/09/2023
;Send($Var_3)

Sleep(500)
MouseClick("left",452,631,1) ; Envia a Busca

Sleep(500)
MouseClick("left",559,462,1) ; Baixa .csv