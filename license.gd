extends Node2D
class_name License

@export var tiers: Array[LicenseTier]
@export var license_level := 0;
@export var license_sprite: Sprite2D

var license: LicenseTier

func _ready() -> void:
	license = tiers[license_level]
	update_fishing_license()


func update_fishing_license():
	license_sprite.modulate = license.color

func increment_license_level():
	license_level += 1
	update_fishing_license()

func can_eat_target(node: Node2D):
	for n in license_level + 1:
		var tier = tiers[n]

		print(tier.grants)

		for scene in tier.grants:
			if node.scene_file_path == scene.resource_path:
				return true
	return false
