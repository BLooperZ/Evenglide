extends Line2D
class_name Rope2D

@export var segment_scene: PackedScene

@export var player1: CharacterBody2D
@export var player2: CharacterBody2D

@export var num_segments = 8


func create_joint():
	var joint = PullJoint2D.new()
	joint.softness = 16.0
	joint.angular_limit_enabled = true
	joint.angular_limit_lower = -3
	joint.angular_limit_upper = 3
	return joint

var line_data_sources: Array[Node2D] = []

func create_segments() -> void:
	line_data_sources.clear()

	for child in get_children():
		remove_child(child)
		child.queue_free()
	var vec = (player2.global_position - player1.global_position) / num_segments

	var seg = segment_scene.instantiate()
	seg.global_position = player1.global_position
	seg.global_rotation = PI / 2 + (player2.global_position - player1.global_position).angle()
	add_child(seg)
	var last_seg = seg
	var joint = create_joint()
	#joint.global_position = seg.global_position
	seg.add_child(joint)
	joint.node_a = joint.get_path_to(player1)
	joint.node_b = joint.get_path_to(seg)

	line_data_sources.append(player1);
	line_data_sources.append(seg);

	for i in range(num_segments):
		seg = segment_scene.instantiate()
		add_child(seg)
		seg.global_position = last_seg.global_position + vec
		seg.global_rotation = PI / 2 + (last_seg.global_position - seg.global_position).angle()
		seg.prev = last_seg
		last_seg.next = seg
		joint = create_joint()
		#joint.global_position = (last_seg.global_position + seg.global_position) / 2
		seg.add_child(joint)
		joint.node_a = joint.get_path_to(last_seg)
		joint.node_b = joint.get_path_to(seg)
		last_seg = seg
		line_data_sources.append(seg)

	joint = create_joint()
	#joint.global_position = last_seg.global_position
	seg.add_child(joint)
	joint.node_a = joint.get_path_to(player2)
	joint.node_b = joint.get_path_to(last_seg)

	line_data_sources.append(player2);


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	create_segments()

func _physics_process(_delta: float) -> void:
	clear_points()
	for link in line_data_sources:
		add_point(link.global_position)

	if Input.is_action_just_released("ui_accept"):
		create_segments()
