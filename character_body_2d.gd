extends CharacterBody2D


const SPEED = 1000.0

@export var key_up: String = "p1_up"
@export var key_down: String = "p1_down"
@export var key_left: String = "p1_left"
@export var key_right: String = "p1_right"

@export var joint: Node2D = null

func _physics_process(delta: float) -> void:

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_vector(key_left, key_right, key_up, key_down)
	velocity = lerp(velocity, direction * SPEED, 0.7)

	velocity -= joint.force * delta * (velocity.length() / SPEED)

	#velocity *= 0.7

	move_and_slide()
