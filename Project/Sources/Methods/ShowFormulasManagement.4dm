//%attributes = {}
// Shows the formula in place of the value and vice versa
Form:C1466.showFormulas:=Not:C34(Form:C1466.showFormulas)

WA Evaluate JavaScript:C1029(*; "ViewProArea"; "Utils.spread.getActiveSheet().options.showFormulas = "+Choose:C955(Form:C1466.showFormulas; "true"; "false")+";")

OBJECT SET ENABLED:C1123(*; "ShowValues"; Form:C1466.showFormulas)
OBJECT SET ENABLED:C1123(*; "ShowFormulas"; Not:C34(Form:C1466.showFormulas))

If (Not:C34(Form:C1466.showFormulas))
	// Reloading of the document with the new record
	VP RECOMPUTE FORMULAS("ViewProArea")
End if 