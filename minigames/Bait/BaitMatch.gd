extends Sprite

var char_tex = load("res://minigames/Bait/black-square.png")
var black = true 

func _ready():
	set_process_input(true)
	texture = char_tex
	yield(get_tree().create_timer(5), "timeout")
	get_tree().change_scene("res://Node2D.tscn")

func _input(event):
	if event.is_action_released("MouseUp"):
		if black:
			texture = load("res://minigames/Bait/white-square.png")
		else:
			texture = load("res://minigames/Bait/black-square.png")
		black = not black
		print(black)
