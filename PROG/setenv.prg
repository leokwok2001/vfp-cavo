CLEAR ALL
CLOSE ALL
CLEAR
PUBLIC	lcDefaPath    	, ;
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
		gcCurrentUser

PUBLIC gcACCDSN, gcAIRDSN, gcACCconn
WAIT WINDOW "���b�ҩl�t�γ]�w�D�D�D�D�D�D" NOWAIT
IsInvCall   = .F.
FSorCS		= "CS"
gcSECDSN	= 'FRANCO_IFM_HK'
lcDSNname 	= "FRANCO_IFM_HK"
gcACCDSN 	= "FRANCO_ACC_HK"
gcAIRDSN 	= "FRANCO_IACM_HK"
lcSysNameL 	= "SHIPPING(FORWARDING) SYSTEM"
lcSysNameS 	= "SHIPPING(FORWARDING) SYSTEM"
lcPath 				= LEFT(ALLTRIM(SYS(5)),1)+":"
lcCurCompPath		= CURDIR()
lcDefaPath 	=	lcPath + LEFT(lcCurCompPath,LEN(lcCurCompPath)-1) + "," + ;
				lcPath + lcCurCompPath + "DATA," + ;
			  	lcPath + lcCurCompPath + "FORM," + ;
			 	lcPath + lcCurCompPath + "PROG," + ;
			 	lcPath + lcCurCompPath + "REPORT," + ;
			 	lcPath + lcCurCompPath + "IMAGE," + ;
			 	lcPath + lcCurCompPath + "CLASSLIB," + ;
			 	lcPath + lcCurCompPath + "MENU"

SET DEFA TO (lcPath + lcCurCompPath)
SET PATH TO (lcDefaPath)

SET DELETE ON
SET STATUS BAR OFF
SET SAFETY OFF
SET TALK OFF
SET ESCAPE OFF
SET EXCLUSIVE OFF
SET NOTIFY OFF
SET MESSAGE OFF
SET CENTURY ON
SET STATUS OFF
SET CENTURY TO 19 ROLLOVER 50
SET DATE TO BRITISH
SET DECIMALS TO 3

Public lcAgenCode			
Public lcAgenName		
Public lcAgenAddr1		
Public lcAgenAddr2	
Public lcAgenAddr3	
Public lcAgenAddr4		


lcCOMPNAME		= "FRANCO VAGO"
lcCOMPADDR1		= 'G/F., Fortune industrial Building, '
lcCOMPADDR2		= '35 Tai Yip Street, Kwun Tong, '
lcCOMPADDR3		= 'Kowloon, '
lcCOMPADDR4		= 'Hong Kong '
lcCOMPTEL		= '(852) 2345 6440'
lcCOMPFAX		= "(852) 2753 8775"

lcCurCNameE		= "FRANCO VAGO"
lcCurCNameC		= "FRANCO VAGO"
lcCurCNameE_S	= "FRANCO VAGO"
lcCurCNameE_L	= "FRANCO VAGO"

lnColor			= RGB(0,0,255)

PUBLIC	gcSureDelete_E , gcSureDelete_C , gcDeleteDialog_E , gcDeleteDialog_C , gcCannotInsert_E , gcCannotInsert_C , gcCannotUpdate_E , gcCannotUpdate_C , ;
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

ON SHUTDOWN DO chk_quit.prg
_SCREEN.WINDOWSTATE = 2

WAIT CLEAR