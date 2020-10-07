//%attributes = {}
// Init all the custom function we need in 4D View Pro
var $customFunctions : Object

$customFunctions:=New object:C1471

// init of the fields allowed in 4D View pro
$customFunctions:=AllowDataStoreFields($customFunctions)

// Create a custom function in 4D View Pro that display the document title
$customFunctions.Title:=New object:C1471
$customFunctions.Title.formula:=Formula:C1597("Customer details")
$customFunctions.Title.summary:="Document title"

// Create a custom function in 4D View Pro that display the number of the first record showed
$customFunctions.FirstRecord:=New object:C1471
$customFunctions.FirstRecord.formula:=Formula:C1597(PeoplePagination.firstRecord)
$customFunctions.Title.summary:="First record number"

// Create a custom function in 4D View Pro that display the number of the last record showed
$customFunctions.LastRecord:=New object:C1471
$customFunctions.LastRecord.formula:=Formula:C1597(PeoplePagination.lastRecord)
$customFunctions.Title.summary:="Last record number"

VP SET CUSTOM FUNCTIONS("ViewProArea"; $customFunctions)
