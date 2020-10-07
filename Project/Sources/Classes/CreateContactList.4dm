Class constructor($contactNumbers : Integer)
	// Creation of the document by programing
	// Number of contact to show
	This:C1470.contactNumbers:=$contactNumbers
	// Name of the 4D View Pro area
	This:C1470.areaName:="ViewProArea"
	// Name of the table that is showed in the document
	This:C1470.tableName:="People"
	
	
	
Function CreateDocument($addStyle : Boolean)
	var $row, $num : Integer
	
	$row:=0
	$num:=0
	
	If ($addStyle)
		VP SET DEFAULT STYLE(This:C1470.areaName; New object:C1471("font"; This:C1470.StyleFont(False:C215)))
		VP SET COLUMN ATTRIBUTES(VP Combine ranges(VP Column(This:C1470.areaName; 0); VP Column(This:C1470.areaName; 3); VP Column(This:C1470.areaName; 6)); New object:C1471("width"; 140))
		VP SET COLUMN ATTRIBUTES(VP Combine ranges(VP Column(This:C1470.areaName; 1); VP Column(This:C1470.areaName; 4); VP Column(This:C1470.areaName; 7)); New object:C1471("width"; 300))
		VP SET COLUMN ATTRIBUTES(VP Combine ranges(VP Column(This:C1470.areaName; 2); VP Column(This:C1470.areaName; 5)); New object:C1471("width"; 5))
	End if 
	
	VP SET FORMULA(VP Cell(This:C1470.areaName; 0; $row); "\"Record: \"& FirstRecord() & \" to \" & lastRecord()")
	
	// add title
	VP SET FORMULA(VP Cell(This:C1470.areaName; 3; $row); "Title()")
	VP SET CELL STYLE(VP Cell(This:C1470.areaName; 3; $row); New object:C1471("font"; This:C1470.StyleFont(True:C214); "foreColor"; "red"))
	
	$row:=$row+2
	
	While ($num<This:C1470.contactNumbers)
		
		If ($addStyle)
			VP SET CELL STYLE(VP Row(This:C1470.areaName; $row); New object:C1471("font"; This:C1470.StyleFont(True:C214)))
		End if 
		This:C1470.CreateContact(0; $row; $num)
		$num:=$num+1
		
		If ($num<This:C1470.contactNumbers)
			This:C1470.CreateContact(3; $row; $num)
			$num:=$num+1
		End if 
		
		If ($num<This:C1470.contactNumbers)
			This:C1470.CreateContact(6; $row; $num)
			$num:=$num+1
		End if 
		
		$row:=$row+8
	End while 
	
Function CreateContact($columnOrigin : Integer; $rowOrigin : Integer; $contactNumber : Integer)
	
	VP ADD SPAN(VP Cells(This:C1470.areaName; $columnOrigin; $rowOrigin; 1; 7))
	
	VP SET FORMULA(VP Cell(This:C1470.areaName; $columnOrigin; $rowOrigin); This:C1470.tableName+"_Portrait_S("+String:C10($contactNumber)+")")
	VP SET FORMULA(VP Cell(This:C1470.areaName; $columnOrigin+1; $rowOrigin); This:C1470.tableName+"_Title("+String:C10($contactNumber)+")&\" \"&"+This:C1470.tableName+"_Firstname("+String:C10($contactNumber)+")&\" \"&"+This:C1470.tableName+"_Lastname("+String:C10($contactNumber)+")")
	VP SET FORMULA(VP Cell(This:C1470.areaName; $columnOrigin+1; $rowOrigin+1); This:C1470.tableName+"_Address("+String:C10($contactNumber)+")")
	VP SET FORMULA(VP Cell(This:C1470.areaName; $columnOrigin+1; $rowOrigin+2); This:C1470.tableName+"_ZipCode("+String:C10($contactNumber)+")&\" \"&"+This:C1470.tableName+"_City("+String:C10($contactNumber)+")")
	VP SET FORMULA(VP Cell(This:C1470.areaName; $columnOrigin+1; $rowOrigin+3); This:C1470.tableName+"_Country("+String:C10($contactNumber)+")")
	VP SET FORMULA(VP Cell(This:C1470.areaName; $columnOrigin+1; $rowOrigin+4); This:C1470.tableName+"_Phone("+String:C10($contactNumber)+")")
	VP SET FORMULA(VP Cell(This:C1470.areaName; $columnOrigin+1; $rowOrigin+5); This:C1470.tableName+"_email("+String:C10($contactNumber)+")")
	
Function StyleFont($isBold : Boolean)->$shorthand : Text
	var $font : Object
	$font:=New object:C1471
	
	$font.family:="Arial,sans-serif"
	$font.size:="12pt"
	$font.weight:=Choose:C955($isBold; vk font weight bold:K89:64; vk font weight lighter:K89:66)
	$shorthand:=VP Object to font($font)
	
	
	