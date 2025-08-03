extends Sprite2D
@onready var license: License = $"../../../../License"
@export var req: int = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if license.license_level >= req:
		visible = true
	else:
		visible = false
