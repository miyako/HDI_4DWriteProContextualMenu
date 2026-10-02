//the button already has "accept" standard action
If (Form event code=On Clicked)
	
	If (Form.quit)
		INVOKE ACTION(ak return to design mode)
	Else 
		
		var $window : Integer
		$window:=Open form window("DemoForm"; Plain form window; Horizontally centered; Vertically centered)
		SET WINDOW TITLE(Get window title(Current form window); $window)
		DIALOG("DemoForm"; Form; *)
		
	End if 
	
End if 
