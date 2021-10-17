extends Area2D

const plant = preload("res://Scenes/Plant.tscn")

onready var scene = get_node("../../../Node2D")
onready var spawn_level = get_node("../SpawnLevel")


func _on_Area2D_body_entered(body: Node):
	if body.has_method("get_seed_position"):
		var seed_pos = Vector2(body.get_seed_position().x, spawn_level.global_position.y)
		var plant_instance = plant.instance()
		plant_instance.position = seed_pos
		scene.add_child(plant_instance)
		body.queue_free()
