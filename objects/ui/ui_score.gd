extends Control

class_name UiScore

@onready var label: Label = $Label

func set_score(value: int) -> void:
	label.text = "Score: %d" % value
