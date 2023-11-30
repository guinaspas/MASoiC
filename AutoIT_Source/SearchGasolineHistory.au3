#include <MsgBoxConstants.au3>
#include <StringConstants.au3>
#include <File.au3>
#include <IE.au3>

;;;Behavior 1;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Search Gasoline History ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


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


ShellExecute("chrome.exe", "https://www.gov.br/anp/pt-br/centrais-de-conteudo/dados-abertos/serie-historica-de-precos-de-combustiveis --new-window --start") ;on screen 4 FUNCIONA --force-device-scale-factor=.86
Sleep(5000)
WinSetState("[ACTIVE]", "", @SW_MAXIMIZE)

Sleep(500)
;rejeitar cook
MouseClick("left",986,644,1)

Sleep(500)
;scroll down
MouseClick("left",1356,678,1)

Sleep(500)
;download history price
MouseClick("left",200,294,1)
