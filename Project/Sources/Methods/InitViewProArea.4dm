//%attributes = {}
// Creation of the document by programing
var $contactList : cs:C1710.CreateContactList

//Init the document when the 4D View Pro area is available
VP SET COLUMN COUNT("ViewProArea"; 9)
VP SET ROW COUNT("ViewProArea"; 265)

VP SET SHEET OPTIONS("ViewProArea"; New object:C1471("rowHeaderVisible"; False:C215; "colHeaderVisible"; False:C215; "gridline"; New object:C1471("showVerticalGridline"; False:C215; "showHorizontalGridline"; False:C215)))

PeoplePagination:=cs:C1710.PaginateTable.new(ds:C1482.People.all())
Form:C1466.EntitySelection:=PeoplePagination.Next()

// Creation of the document
$contactList:=cs:C1710.CreateContactList.new(Form:C1466.EntitySelection.length)
$contactList.CreateDocument(True:C214)

OBJECT SET ENABLED:C1123(*; "Next_Button"; True:C214)

ShowFormulasManagement