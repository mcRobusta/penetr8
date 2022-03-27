extends Node

var inputArray = [true, true, true, true, true, true, true, true, true]
var targetArray = []
var rng = RandomNumberGenerator.new()

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

"""if black:
			texture = load("res://minigames/Bait/white-square.png")
		else:
			texture = load("res://minigames/Bait/black-square.png")"""
# Called when the node enters the scene tree for the first time.
func _ready():
	produceRandomInput()

func produceRandomInput():
	targetArray = []
	for x in range(9):
		rng.randomize()
		if rng.randi_range(0, 1) == 1:
			targetArray.append(true)
		else:
			targetArray.append(false)
