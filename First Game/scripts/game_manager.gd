extends Node

var score = 0

@onready var score_label = $ScoreLabel

func add_point():
	score += 1
	score_label.text = "You collected " + str(score) + " coins."

func _on_sf_xtoggle_toggled(toggled_on):
	AudioServer.set_bus_mute(AudioServer.get_bus_index("SFX"), toggled_on)

func _on_musictoggle_toggled(toggled_on):
	AudioServer.set_bus_mute(AudioServer.get_bus_index("Music"), toggled_on)


func _on_confirmation_toggled(toggled_on):
	pass # Replace with function body.
