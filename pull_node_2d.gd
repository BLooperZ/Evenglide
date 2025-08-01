extends Joint2D

@export var k: float = 400.0
@export var rest_length: float = 20.0

var xnode_a
var xnode_b

var force = Vector2(0, 0)

func _ready():
	xnode_a = get_node(node_a)
	xnode_b = get_node(node_b)

func _physics_process(delta):
	var pos_a = xnode_a.global_position
	var pos_b = xnode_b.global_position
	var delta_pos = pos_b - pos_a
	var current_length = delta_pos.length()


	if current_length < rest_length:
		return

	var stretch = current_length - rest_length
	var direction = delta_pos.normalized()
	# Hooke's Law force
	force = -k * stretch * direction

	if xnode_a is RigidBody2D:
		xnode_a.apply_central_impulse(-force * 0.0002 * delta)
	if xnode_b is RigidBody2D:
		xnode_b.apply_central_impulse(force * 0.0002 * delta)
