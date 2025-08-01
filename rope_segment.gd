extends RigidBody2D

@onready var shape_node := $CollisionShape2D
var prev: Node2D = null
var next: Node2D = null

func _physics_process(delta: float) -> void:
	if prev == null or next == null:
		return
	var posn = next.global_position
	var posp = prev.global_position
	var distance = posn.distance_to(posp)

	#rotation = 0
	var shape = shape_node.shape
	shape.height = distance / 2
	shape.radius = 10

	#global_rotation = posn.angle_to(posp)
