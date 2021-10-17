extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var holdingLeftClick = false
onready var panelModel = get_node("../Panel2D")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		holdingLeftClick = true
		#if get_rect().has_point(to_local(event.position)):
			#position = event.position
	if event is InputEventMouseButton and !event.pressed:
		holdingLeftClick = false

func _physics_process(delta):
	if holdingLeftClick == true:
			print(get_global_mouse_position().x)
			position.x = get_global_mouse_position().x
		#if get_rect().has_point(get_local_mouse_position()):
			#position.x = get_global_mouse_position().x

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
