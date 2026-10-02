//%attributes = {"invisible":true}

// We create a personalized sub-menu for the font size. We want to display only the following size in the menu:
// * 10 pt
// * 12 pt
// * 14 pt
// * 16 pt


// Create sub menu size
menuSubSize:=Create menu:C408

// Insert item with size: 10pt
APPEND MENU ITEM:C411(menuSubSize; ak standard action title:K76:83)
SET MENU ITEM PROPERTY:C973(menuSubSize; -1; Associated standard action:K56:1; "fontSize?value=10pt")

// Insert item with size: 10pt
APPEND MENU ITEM:C411(menuSubSize; ak standard action title:K76:83)
SET MENU ITEM PROPERTY:C973(menuSubSize; -1; Associated standard action:K56:1; "fontSize?value=12pt")

// Insert item with size: 10pt
APPEND MENU ITEM:C411(menuSubSize; ak standard action title:K76:83)
SET MENU ITEM PROPERTY:C973(menuSubSize; -1; Associated standard action:K56:1; "fontSize?value=14pt")

// Insert item with size: 10pt
APPEND MENU ITEM:C411(menuSubSize; ak standard action title:K76:83)
SET MENU ITEM PROPERTY:C973(menuSubSize; -1; Associated standard action:K56:1; "fontSize?value=16pt")