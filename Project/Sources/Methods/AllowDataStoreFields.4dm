//%attributes = {}
// ----------------------------------------------------
// Method : AllowDataStoreFields
// Description
// Initializing the list of fields that the user can call in 4D View Pro
// ----------------------------------------------------
var $1, $customFunctions, $0 : Object

$customFunctions:=$1

$customFunctions.People_Portrait_S:=New object:C1471
$customFunctions.People_Portrait_S.formula:=Formula:C1597(Form:C1466.EntitySelection[$1].Portrait_S)
$customFunctions.People_Portrait_S.parameters:=New collection:C1472
$customFunctions.People_Portrait_S.parameters.push(New object:C1471("name"; "num"; "type"; Is integer:K8:5))


$customFunctions.People_Title:=New object:C1471
$customFunctions.People_Title.formula:=Formula:C1597(Form:C1466.EntitySelection[$1].Title)
$customFunctions.People_Title.parameters:=New collection:C1472
$customFunctions.People_Title.parameters.push(New object:C1471("name"; "num"; "type"; Is integer:K8:5))

$customFunctions.People_Firstname:=New object:C1471
$customFunctions.People_Firstname.formula:=Formula:C1597(Form:C1466.EntitySelection[$1].Firstname)
$customFunctions.People_Firstname.parameters:=New collection:C1472
$customFunctions.People_Firstname.parameters.push(New object:C1471("name"; "num"; "type"; Is integer:K8:5))

$customFunctions.People_Lastname:=New object:C1471
$customFunctions.People_Lastname.formula:=Formula:C1597(Form:C1466.EntitySelection[$1].Lastname)
$customFunctions.People_Lastname.parameters:=New collection:C1472
$customFunctions.People_Lastname.parameters.push(New object:C1471("name"; "num"; "type"; Is integer:K8:5))

$customFunctions.People_Address:=New object:C1471
$customFunctions.People_Address.formula:=Formula:C1597(Form:C1466.EntitySelection[$1].Address)
$customFunctions.People_Address.parameters:=New collection:C1472
$customFunctions.People_Address.parameters.push(New object:C1471("name"; "num"; "type"; Is integer:K8:5))

$customFunctions.People_ZipCode:=New object:C1471
$customFunctions.People_ZipCode.formula:=Formula:C1597(Form:C1466.EntitySelection[$1].ZipCode)
$customFunctions.People_ZipCode.parameters:=New collection:C1472
$customFunctions.People_ZipCode.parameters.push(New object:C1471("name"; "num"; "type"; Is integer:K8:5))

$customFunctions.People_City:=New object:C1471
$customFunctions.People_City.formula:=Formula:C1597(Form:C1466.EntitySelection[$1].City)
$customFunctions.People_City.parameters:=New collection:C1472
$customFunctions.People_City.parameters.push(New object:C1471("name"; "num"; "type"; Is integer:K8:5))

$customFunctions.People_Country:=New object:C1471
$customFunctions.People_Country.formula:=Formula:C1597(Form:C1466.EntitySelection[$1].Country)
$customFunctions.People_Country.parameters:=New collection:C1472
$customFunctions.People_Country.parameters.push(New object:C1471("name"; "num"; "type"; Is integer:K8:5))

$customFunctions.People_Phone:=New object:C1471
$customFunctions.People_Phone.formula:=Formula:C1597(Form:C1466.EntitySelection[$1].Phone)
$customFunctions.People_Phone.parameters:=New collection:C1472
$customFunctions.People_Phone.parameters.push(New object:C1471("name"; "num"; "type"; Is integer:K8:5))

$customFunctions.People_email:=New object:C1471
$customFunctions.People_email.formula:=Formula:C1597(Form:C1466.EntitySelection[$1].email)
$customFunctions.People_email.parameters:=New collection:C1472
$customFunctions.People_email.parameters.push(New object:C1471("name"; "num"; "type"; Is integer:K8:5))

$0:=$customFunctions


