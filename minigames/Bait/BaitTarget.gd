extends Node

var probability = 0
var rng = RandomNumberGenerator.new()

func _ready():
	set_process_input(true)
	for x in range(1, 10):
		var spriteName = "TargetSprite" + str(x)
		print(spriteName)
		if BaitTargetArray.targetArray[x - 1]:
			get_node(spriteName).texture = load("res://minigames/Bait/white-square.png")
		else:
			get_node(spriteName).texture = load("res://minigames/Bait/black-square.png")
	yield(get_tree().create_timer(5), "timeout")
	for x in range(9):
		if BaitTargetArray.inputArray[x] != BaitTargetArray.targetArray[x]:
			probability += 1
	probability = probability * 0.11
	MinigamesCompleted.bait_score = probability
	BaitTargetArray.targetArray = []
	for x in range(9):
		rng.randomize()
		if rng.randi_range(0, 1) == 1:
			BaitTargetArray.targetArray.append(true)
		else:
			BaitTargetArray.targetArray.append(false)
	get_tree().change_scene("res://Node2D.tscn")


func _on_TextureButton_toggled(button_pressed):
	print(button_pressed)
	BaitTargetArray.inputArray[0] = !button_pressed


func _on_TextureButton2_toggled(button_pressed):
	BaitTargetArray.inputArray[1] = !button_pressed


func _on_TextureButton3_toggled(button_pressed):
	BaitTargetArray.inputArray[2] = !button_pressed


func _on_TextureButton4_toggled(button_pressed):
	BaitTargetArray.inputArray[3] = !button_pressed


func _on_TextureButton5_toggled(button_pressed):
	BaitTargetArray.inputArray[4] = !button_pressed


func _on_TextureButton6_toggled(button_pressed):
	BaitTargetArray.inputArray[5] = !button_pressed


func _on_TextureButton7_toggled(button_pressed):
	BaitTargetArray.inputArray[6] = !button_pressed


func _on_TextureButton8_toggled(button_pressed):
	BaitTargetArray.inputArray[7] = !button_pressed


func _on_TextureButton9_toggled(button_pressed):
	BaitTargetArray.inputArray[8] = !button_pressed
