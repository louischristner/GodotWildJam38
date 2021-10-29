extends KinematicBody2D

onready var animation = get_node("AnimatedSprite")

func _ready():
	(animation as AnimatedSprite).play()

func _on_KinematicBody2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		queue_free()
