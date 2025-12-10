extends Node2D

@onready var main_button: Button = $GameButton/Button
@onready var score_display: UiScore = $Ui_Score

var score: int = 0

func _ready() -> void:
	main_button.pressed.connect(_on_main_button_pressed)
	_update_score_ui()

func _on_main_button_pressed() -> void:
	score += 1
	_update_score_ui()

func _update_score_ui() -> void:
	score_display.set_score(score)
