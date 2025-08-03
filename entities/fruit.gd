extends RigidBody2D

func eat_fruit():
	var license: License = get_node("/root/Ropes/License")

	license.increment_license_level()

func _on_consumable_on_consumed() -> void:
	eat_fruit()
