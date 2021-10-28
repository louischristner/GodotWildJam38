extends KinematicBody2D


const seed_obj = preload("res://Scenes/Seed.tscn")

onready var scene = get_node("../../Node2D")


func _on_KinematicBody2D_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		var seed_obj_instance = seed_obj.instance()
		var mouse_position = get_viewport().get_mouse_position() - Vector2(320, 0)
		seed_obj_instance.position = mouse_position
		scene.add_child(seed_obj_instance)
