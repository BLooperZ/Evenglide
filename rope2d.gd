extends Node2D

@export var segment_scene: PackedScene

@export var player1: CharacterBody2D
@export var player2: CharacterBody2D

@export var num_segments = 8

func create_joint():
	var joint = PullJoint2D.new()
	joint.softness = 16.0
	joint.k = 400.0
	joint.rest_length = 20.0
	return joint

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var seg = segment_scene.instantiate()
	add_child(seg)
	var last_seg = seg
	var joint = create_joint()
	add_child(joint)
	joint.node_a = joint.get_path_to(player1)
	joint.node_b = joint.get_path_to(seg)

	for i in range(num_segments):
		seg = segment_scene.instantiate()
		add_child(seg)
		joint = create_joint()
		add_child(joint)
		joint.node_a = joint.get_path_to(last_seg)
		joint.node_b = joint.get_path_to(seg)
		last_seg = seg

	joint = create_joint()
	add_child(joint)
	joint.node_a = joint.get_path_to(player2)
	joint.node_b = joint.get_path_to(last_seg)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
