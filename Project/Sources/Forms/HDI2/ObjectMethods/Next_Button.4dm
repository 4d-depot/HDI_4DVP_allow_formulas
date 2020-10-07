If (FORM Event:C1606.code=On Clicked:K2:4)
	If (Form:C1466.trace)
		TRACE:C157
	End if 
	var $contactList : cs:C1710.CreateContactList
	
	Form:C1466.EntitySelection:=PeoplePagination.Next()
	
	// reloading of the document with the new record
	VP RECOMPUTE FORMULAS("ViewProArea")
	
End if 