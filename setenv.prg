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
Wait Window "���b�ҩl�t�γ]�w�D�D�D�D�D�D" Nowait

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

gcDeleteDialog_C	= "�R����ܲ�"
gcSaveDialog_C		= "�x�s��ܲ�"
gcSureDelete_C 		= "�դU�O�_�T�w�R���H"
gcSureSave_C 		= "�դU�O�_�T�w�x�s�H"
gcSaved_C 			= "�O���w�g�x�s�D"
gcCannotInsert_C	= "�t�Υ���s�W�O���A�i��X�{���_���s�X�A�Ьd�ݫ�A�դ@���I"
gcCannotUpdate_C	= "�t�Υ����s���A��������ơA�ЦA�դ@���I"
gcInvalidCode_C		= "���~���s�X�I"
gcRepeatCode_C		= "�s�X���ơI"
gcInputCode_C		= "�դU�O�_�۩w�s�X?"
gcShowAmt_C			= "�դU�O�_�T�w�C�L���B ? "
gcPrint_C			= "�C�L���"
gcVessVoyAgen_C		= "���_���, �覸�ζU�z�H!"
lclogin = .T.

On Shutdown Do chk_quit.prg
_Screen.Caption = "�������~�������q-CAVO INDUSTRIES COMPANY LIMITED"&&lcSysNameS + " - " + lcSysNameL
_Screen.WindowState = 2

Wait Clear
