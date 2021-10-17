extends TextureButton


const seed_obj = preload("res://Scenes/Seed.tscn")

onready var scene = get_node("../../Node2D")

func _on_TextureButton_pressed():
	var seed_obj_instance = seed_obj.instance()
	var mouse_position = get_viewport().get_mouse_position() - Vector2(640, 0)
	seed_obj_instance.position = mouse_position
	scene.add_child(seed_obj_instance)
