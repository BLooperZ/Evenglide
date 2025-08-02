@tool
extends Node2D

@export var num_rays = 10
@export var ray_size = 20
@export var time_to_consume_seconds := 1.
@export var draw_gizmo = false
@export var consume_target: Node2D
@export_flags_2d_physics var rope_collision_layer

var area: Area2D
var active_collisions := 0
var current_time_to_consume := 0.
var is_consuming = false
@onready var rope: Line2D = get_node("/root/Ropes/Rope")


signal onConsumed

func _ready() -> void:
	area = Area2D.new()
	area.name = "DetectionArea"
	area.collision_layer = 0 # It doesn't exist on any layer
	area.collision_mask = rope_collision_layer # It detects objects on this layer
	add_child(area)

	# Add shape
	var collision_shape = CollisionShape2D.new()
	var shape = CircleShape2D.new()
	shape.radius = ray_size
	collision_shape.shape = shape
	area.add_child(collision_shape)

	# Connect signals
	area.body_entered.connect(func(_r): active_collisions += 1)
	area.body_exited.connect(func(_r): active_collisions -= 1)

func is_covered_by_rope() -> bool:
	var segment_angle = (PI * 2) / num_rays
	var polyline = rope.points
	var point = global_position

	for n in num_rays:
		var ray = Vector2.UP.rotated(segment_angle * n) * ray_size
		var hit = false

		for j in range(polyline.size() - 1):
			var a = polyline[j]
			var b = polyline[j + 1]

			if Geometry2D.segment_intersects_segment(point, point + ray, a, b) != null:
				hit = true
				break

		if !hit:
			return false
	
	return true

func colliding_with_rope():
	return active_collisions > 0

func _physics_process(delta: float) -> void:
	if !Engine.is_editor_hint():
		if colliding_with_rope():
			if is_covered_by_rope():
				current_time_to_consume += delta
				is_consuming = true

				if current_time_to_consume >= time_to_consume_seconds:
					current_time_to_consume = 0
					is_consuming = false

					onConsumed.emit()
					consume_target.queue_free()
			else:
				current_time_to_consume = 0
				is_consuming = false

func _process(_delta: float) -> void:
	if draw_gizmo:
		queue_redraw()

func _draw() -> void:
	if colliding_with_rope():
		var ray = Vector2.UP
		var segment_angle = (PI * 2) / num_rays

		for n in num_rays:
			draw_line(Vector2.ZERO, ray.rotated(segment_angle * n) * ray_size, Color.ORANGE, 2)
	else:
		draw_circle(Vector2.ZERO, ray_size, Color.ORANGE, false, 2)
