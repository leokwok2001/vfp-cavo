PRIVATE lnQuit

lnQuit = 2

IF _SCREEN.FORMCOUNT < 2

	DO FORM sys_quit
	IF lnQuit = 1

		DO ENDPROG.PRG

	ENDIF

ELSE
	

		WAIT WINDOW "�h�X�t�Ϋe�Х������Ҧ��w�}�Ҫ������I"

ENDIF