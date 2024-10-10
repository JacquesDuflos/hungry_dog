extends CharacterBody2D

const SPEED = 400.0

func _physics_process(delta):
	var direction = Input.get_vector("ui_left", "ui_right","ui_up","ui_down")
	velocity = direction * SPEED
	$Dog.flip_h = velocity.x > 0
	move_and_slide()
	
	if not $Eatbox.get_overlapping_areas():
		return
	var area = $Eatbox.get_overlapping_areas()[0]
	#if area.name.count("Chicharron"):
	if area.is_in_group("pickable"):
		area.queue_free()

#func _on_button_pressed():

func _on_button_pressed():
	get_tree().reload_current_scene()
