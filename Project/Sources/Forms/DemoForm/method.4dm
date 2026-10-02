Case of 
	: (Form event code:C388=On Load:K2:1)
		
		var myMenu; menuSubSize : Text
		var myArea : Object
		var $filePath : Text
		
		$filePath:=Get 4D folder:C485(Current resources folder:K5:16)+"MyWritePro.4wp"
		myArea:=WP Import document:C1318($filePath)
		
		createMenu
		
	: (Form event code:C388=On Unload:K2:2)
		// release menu
		RELEASE MENU:C978(myMenu)
		RELEASE MENU:C978(menuSubSize)
		
End case 