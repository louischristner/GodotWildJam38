extends HBoxContainer


const seed_obj = preload("res://Scenes/Seed.tscn")

onready var button_1 = get_node("TextureButton1")
onready var button_2 = get_node("TextureButton2")
onready var button_3 = get_node("TextureButton3")
onready var button_4 = get_node("TextureButton4")

onready var scene = get_node("../../../Node2D")


func _on_TextureButton1_pressed():
	var seed_obj_instance = seed_obj.instance()
	var mouse_position = get_viewport().get_mouse_position() - Vector2(400, 0)
	seed_obj_instance.position = mouse_position
	scene.add_child(seed_obj_instance)
