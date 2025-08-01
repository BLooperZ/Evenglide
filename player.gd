extends CharacterBody2D


const SPEED = 3000.0
const TURN_RATE = 0.035
const ACCELERATION = 0.02

@export var key_up: String = "p1_up"
@export var key_down: String = "p1_down"
@export var key_left: String = "p1_left"
@export var key_right: String = "p1_right"

@onready var sprite = $Sprite2D
@onready var spriteScaleX = sprite.scale.x

var tension = Vector2(0, 0)

func apply_force(a_force):
	tension = a_force

var direction := Vector2.ZERO;
var wish_dir := Vector2.ZERO;
var commitment := 0.

func _physics_process(delta: float) -> void:
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	wish_dir = Input.get_vector(key_left, key_right, key_up, key_down)

	if direction == Vector2.ZERO:
		direction = wish_dir

	direction = direction.rotated(lerp_angle(0, 0 + direction.angle_to(wish_dir), TURN_RATE)).normalized()
	
	commitment = lerp(commitment, wish_dir.length(), ACCELERATION)

	velocity = lerp(velocity, direction * SPEED * commitment, 0.7)

	velocity -= tension * delta * (velocity.length() / SPEED)

	if direction.x > 0:
		sprite.scale.x = -1 * spriteScaleX;
	else:
		sprite.scale.x = 1 * spriteScaleX;


	move_and_slide()
	queue_redraw()

func _draw():
	if wish_dir != Vector2.ZERO:
		var line_length = 50.0
		draw_line(Vector2.ZERO, (wish_dir * line_length), Color.RED, 4.0)
	if direction != Vector2.ZERO:
		var line_length = 100.0
		draw_line(Vector2.ZERO, (direction * line_length), Color.MAGENTA, 4.0)
		draw_line(Vector2.ZERO, (direction * commitment * line_length), Color.GREEN, 4.0)
	if velocity != Vector2.ZERO:
		var line_length = 150.0
		draw_line(Vector2.ZERO, (velocity.normalized() * line_length), Color.PURPLE, 2.0)
