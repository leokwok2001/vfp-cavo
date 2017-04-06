** -- Create the WinFax Object here.
oWinFax = CREATEOBJECT("WinFax.SDKSend")

with oWinFax
   ** -- Set some properties to avoid WinFax to Show on the Screen.
   .EnableBillingCodeKeywords(0)
   .SetUseCreditCard(0)
   .ShowSendScreen(0)
   .SetQuickCover(0)
   .SetPreviewFax(0)

   ** -- Set the Cover Page and its text here.
   .SetUseCover(1)
   .SetCoverFile(TRIM(dFaxTo.cCoverPage))
   .SetCoverText(THISFORM.GetCoverText(cFilter))
   ** -- Make sure WinFax shows it monitor window while sending the Fax.
   .ShowCallProgess(1)

   ** -- Leave the Controller Running after procesing this fax.
   .LeaveRunning()

   ** -- Check that the WinFax Printer is ready.
   .IsReadyToPrint()

   ** -- Setup the Recipient information here.
   .SetTo(TRIM(dFaxTo.cFirst) + ' ' + TRIM(dFaxTo.cLast))
   .SetSubject(TRIM(dFaxTo.cSubject))
   .SetNumber(TRIM(dFaxTo.cLocalNumber))
   .SetAreaCode(TRIM(dFaxTo.cArea))
   .SetCompany(TRIM(dFaxTo.cCompany))

   ** -- Finish the WinFax Setup Commands.
   .AddRecipient()    && Required by WinFax
   .SetPrintFromApp(1)
   .AddAttachmentFile("")
   .SEND(1)

   ** -- Set the VFP default printer to the WinFax Print Driver.
   *SET PRINTER TO NAME "WinFax (Photo Quality)"
   SET PRINTER TO NAME "WinFax"

   ** -- Print the Report here.
   REPORT FORM dActivationForm NOEJECT NOCONSOLE TO PRINTER

   ** -- Make sure this instance of WinFax is done and released.
   .done()
endwith

INKEY(1) && Small Delay is needed here prior to Release oWinFax.
RELEASE oWinFax
