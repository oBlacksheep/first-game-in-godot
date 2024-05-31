extends Area2D

@onready var timer = $Timer
@onready var sfx_die = $sfx_die

func _on_body_entered(body): 
	print("You died!")
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	sfx_die.play()
	timer.start()


func _on_timer_timeout():
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
