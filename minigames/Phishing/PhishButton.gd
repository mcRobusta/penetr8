extends TextureButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	disabled = true
	yield(get_tree().create_timer(1), "timeout")
	disabled = false
	yield(get_tree().create_timer(MinigamesCompleted.bait_score), "timeout")
	get_tree().change_scene("res://Node2D.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TextureButton_pressed():
	MinigamesCompleted.phising_passed = true
