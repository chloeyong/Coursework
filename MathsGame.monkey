'Libraries and global variables
Import mojo
Global Game: Game_app

Function Main()
Game = New Game_app
End

'All game code goes here:
Class Game_app Extends App
Field startscreen: Image
Global GameState: String = "START"

Method OnCreate()
'All the initialisation for the game goes here:
	SetUpdateRate 60
	startscreen = LoadImage("startscreen.png")
End

Method OnRender ()
'All the graphics drawings go here:
	Select GameState
		Case "START"
			DrawImage startscreen, 0, 0
	End
End
End