extends Area2D

const radius = 60
const plant = preload("res://Scenes/Plant.tscn")

onready var scene = get_node("../../../Node2D")
onready var spawn_level = get_node("../SpawnLevel")


func _on_Area2D_body_entered(body: Node):
	if body.has_method("get_seed_position"):
		var seed_pos = Vector2(body.get_seed_position().x, spawn_level.global_position.y)
		var spawn_level_x = spawn_level.global_position.x - 320
		var plant_instance = plant.instance()

		if seed_pos.x < spawn_level_x - radius:
			seed_pos.x = spawn_level_x - radius
		elif seed_pos.x > spawn_level_x + radius:
			seed_pos.x = spawn_level_x + radius
		plant_instance.position = seed_pos
		scene.add_child(plant_instance)
		body.queue_free()
