extends Sprite2D

var chichaNode = preload("res://Scenes/chicharron.tscn")

var rng = RandomNumberGenerator.new()

func _ready():
	while true:
		await get_tree().create_timer(1).timeout
		var new_chicharron:Node2D= chichaNode.instantiate()
		add_child(new_chicharron)
		var angle = rng.randf_range(0,2*PI)
		new_chicharron.position = Vector2(sin(angle),cos(angle))*75
