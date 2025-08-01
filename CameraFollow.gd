extends Camera2D

@export var keep_in_view: Array[Node2D]


func _physics_process(_delta: float) -> void:
	var wish_pos = Vector2()

	for target in keep_in_view:
		wish_pos += target.position

	wish_pos /= keep_in_view.size()

	position = lerp(position, wish_pos, 0.7)
