//%attributes = {"invisible":true}
// Create menu
myMenu:=Create menu:C408

// Insert the "copy" item
APPEND MENU ITEM:C411(myMenu; ak standard action title:K76:83)
SET MENU ITEM PROPERTY:C973(myMenu; -1; Associated standard action:K56:1; ak copy:K76:54)


// Insert the "cut" item
APPEND MENU ITEM:C411(myMenu; ak standard action title:K76:83)
SET MENU ITEM PROPERTY:C973(myMenu; -1; Associated standard action:K56:1; ak cut:K76:53)


// Insert the "paste" item
APPEND MENU ITEM:C411(myMenu; ak standard action title:K76:83)
SET MENU ITEM PROPERTY:C973(myMenu; -1; Associated standard action:K56:1; ak paste:K76:55)


APPEND MENU ITEM:C411(myMenu; "-")


// Insert the "fontStyle" menu
APPEND MENU ITEM:C411(myMenu; ak standard action title:K76:83)
SET MENU ITEM PROPERTY:C973(myMenu; -1; Associated standard action:K56:1; ak font style:K76:86)



// Create sub menu size
createSizeMenu

// Associate the "menuSize" sub-menu to the "Size" item 
APPEND MENU ITEM:C411(myMenu; "Size"; menuSubSize)



//Insert the color menu. A default list of color is shown
APPEND MENU ITEM:C411(myMenu; ak standard action title:K76:83)
SET MENU ITEM PROPERTY:C973(myMenu; -1; Associated standard action:K56:1; ak font color:K76:85)


//Insert the textAlign menu
APPEND MENU ITEM:C411(myMenu; ak standard action title:K76:83)
SET MENU ITEM PROPERTY:C973(myMenu; -1; Associated standard action:K56:1; "textAlign")


//Insert the spell menu
APPEND MENU ITEM:C411(myMenu; ak standard action title:K76:83)
SET MENU ITEM PROPERTY:C973(myMenu; -1; Associated standard action:K56:1; ak spell:K76:81)



APPEND MENU ITEM:C411(myMenu; "-")

APPEND MENU ITEM:C411(myMenu; ak standard action title:K76:83)
SET MENU ITEM PROPERTY:C973(myMenu; -1; Associated standard action:K56:1; "visibleHiddenChars")


