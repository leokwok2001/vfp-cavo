PRIVATE lnQuit

lnQuit = 2

IF _SCREEN.FORMCOUNT < 2

	DO FORM sys_quit
	IF lnQuit = 1

		DO ENDPROG.PRG

	ENDIF

ELSE
	

		WAIT WINDOW "退出系統前請先關閉所有已開啟的視窗！"

ENDIF