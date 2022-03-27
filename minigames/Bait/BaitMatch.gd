extends Sprite

var char_tex = load("res://minigames/Bait/black-square.png") 

func _ready():
	set_process_input(true)
	texture = char_tex

func _input(event):
	if event is InputEventMouseButton:
		texture = load("res://minigames/Bait/white-square.png")
