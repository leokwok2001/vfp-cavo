Clear All
Close All
Clear
Public	lcDefaPath    	, ;
	LCPATH 			, ;
	lcCurCompPath 	, ;
	lcCurCNameE_S 	, ;
	lcCurCNameE_L 	, ;
	lcCurCNameC 	, ;
	lcTelNo			, ;
	lcFaxNo			, ;
	lcCurLan 		, ;
	gcToolBar 		, ;
	oJOB_CSconn		, ;
	oACC_CSconn		, ;
	lcSysNameL		, ;
	lcSysNameS		, ;
	lcDSNname       , ;
	FSorCS			, ;
	IsInvCall		, ;
	lnColor			, ;
	lcCOMPNAME		, ;
	lcCOMPADDR1		, ;
	lcCOMPADDR2		, ;
	lcCOMPADDR3		, ;
	lcCOMPADDR4		, ;
	lcCOMPTEL		, ;
	lcCOMPFAX		, ;
	gcCurrentUser,;
	lclogin,;
	gcIsAdmin, ;
	machine_user

Public gcACCDSN, gcAIRDSN, gcACCconn
Wait Window "正在啟始系統設定．．．．．．" Nowait

LCPATH 				= Left(Alltrim(Sys(5)),1)+":"
lcCurCompPath		= Curdir()
lcDefaPath 	=	LCPATH + Left(lcCurCompPath,Len(lcCurCompPath)-1) + "," + ;
	LCPATH + lcCurCompPath + "DATA," + ;
	LCPATH + lcCurCompPath + "FORM," + ;
	LCPATH + lcCurCompPath + "PROG," + ;
	LCPATH + lcCurCompPath + "RPT," + ;
	LCPATH + lcCurCompPath + "IMG," + ;
	LCPATH + lcCurCompPath + "CLASSLIB," + ;
	LCPATH + lcCurCompPath + "MENU," + ;
	"c:\gs\gs8.11\bin"
Set Defa To (LCPATH + lcCurCompPath)
Set Path To (lcDefaPath)
Set Classlib To "cls" Additive
Set Delete On
Set Safety Off
Set Talk Off
Set Escape Off
Set Exclusive Off
Set Notify Off
Set Message Off
Set Century On
Set Century To 19 ROLLOVER 50
Set Date To BRITISH
Set Decimals To 3
Set Status Bar Off
Set Status Off
lnColor			= Rgb(0,0,255)
Public	gcSureDelete_E , gcSureDelete_C , gcDeleteDialog_E , gcDeleteDialog_C , gcCannotInsert_E , gcCannotInsert_C , gcCannotUpdate_E , gcCannotUpdate_C , ;
	gcInvalidCode_E , gcInvalidCode_C , gcSureSave_E , gcSureSave_C , gcSaved_E , gcSaved_C , gcSaveDialog_E , gcSaveDialog_C, ;
	gcShowAmt_E, gcShowAmt_C, gcPrint_E, gcPrint_C, gcRepeatCode_E, gcRepeatCode_C, gcInputCode_E, gcInputCode_C, ;
	gcVessVoyAgen_E, gcVessVoyAgen_C, gcNotDetailaccno_E, gcNotDetailaccno_C, gcInvalidAccno_E, gcInvalidAccno_C, ;
	gcInvalidHBLno_C, gcInvalidHBLno_E, gcInvalidDebno_C, gcInvalidDebno_E, gcAuto_E, gcAuto_C, gcNoOfCopy, gcInvChk1, gcInvChk2, gcInvChk3

gcDeleteDialog_C	= "刪除對話盒"
gcSaveDialog_C		= "儲存對話盒"
gcSureDelete_C 		= "閣下是否確定刪除？"
gcSureSave_C 		= "閣下是否確定儲存？"
gcSaved_C 			= "記錄已經儲存．"
gcCannotInsert_C	= "系統未能新增記錄，可能出現重復的編碼，請查看後再試一次！"
gcCannotUpdate_C	= "系統未能更新伺服器內的資料，請再試一次！"
gcInvalidCode_C		= "錯誤的編碼！"
gcRepeatCode_C		= "編碼重複！"
gcInputCode_C		= "閣下是否自定編碼?"
gcShowAmt_C			= "閣下是否確定列印金額 ? "
gcPrint_C			= "列印選擇"
gcVessVoyAgen_C		= "重復的船隻, 航次及貸理人!"
lclogin = .T.

On Shutdown Do chk_quit.prg
_Screen.Caption = "飛揚興業有限公司-CAVO INDUSTRIES COMPANY LIMITED"&&lcSysNameS + " - " + lcSysNameL
_Screen.WindowState = 2

Wait Clear
