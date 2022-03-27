extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var words_typed = 0
var words = [
		"Hackerman",
		"Phishing",
		"Cyberattack",
		"Servers",
		"Mainframe",
		"Python",
		"Scriptkiddy",
		"Overflow"
	]
	
var current_word
var targetWord
var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	rng.randomize()
	current_word = words[rng.randi_range(0, 7)]
	targetWord = get_node("Label")
	targetWord.text = current_word
	yield(get_tree().create_timer(10), "timeout")
	if words_typed < 3:
		get_tree().change_scene("res://Node2D.tscn")
	else:
		targetWord.text = "DDOS Error!"
		MinigamesCompleted.DDOS_passed = true
		yield(get_tree().create_timer(1), "timeout")
		get_tree().change_scene("res://Node2D.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_LineEdit_text_entered(new_text):
	if new_text == current_word:
		words_typed += 1
		get_node("LineEdit").text = ""
		updateWord()

func updateWord():
	#rng.randomize()
	var random_index = rng.randi_range(0, 7)
	targetWord = get_node("Label")
	current_word = words[random_index]
	targetWord.text = current_word
