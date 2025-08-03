extends PinJoint2D

class_name PullJoint2D

@export var k: float = 6000.0
@export var rest_length: float = 1.0
@export var segment_factor: float = 0.002
@export var compress_factor: float = 2.0

var xnode_a
var xnode_b

var force = Vector2(0, 0)

func _physics_process(delta):
	
	xnode_a = get_node(node_a)
	xnode_b = get_node(node_b)

	var pos_a = xnode_a.global_position
	var pos_b = xnode_b.global_position
	var delta_pos = pos_b - pos_a
	var current_length = delta_pos.length()

	var stretch = current_length - rest_length
	var direction = delta_pos.normalized()
	# Hooke's Law force
	force = -k * stretch * direction

	if current_length < rest_length:
		force = -force * compress_factor

	if xnode_a is RigidBody2D:
		xnode_a.apply_central_impulse(-force * segment_factor * delta)
	elif xnode_a is CharacterBody2D:
		xnode_a.apply_force(force)
	if xnode_b is RigidBody2D:
		xnode_b.apply_central_impulse(force * segment_factor * delta)
	elif xnode_b is CharacterBody2D:
		xnode_b.apply_force(force)
