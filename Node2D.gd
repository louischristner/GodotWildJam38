extends Node2D

var viewport_initial_size = Vector2()

onready var viewport = $Viewport
onready var viewport_sprite = $Panel2D
onready var panel_solar = $Viewport/Spatial/CSGTorus
onready var mouse_coordinates = Vector2(0, 0);
onready var multiplier_rotation = 0.0001;
onready var camera = $Viewport/Spatial/Camera
const ray_length = 1000

func _ready():
	viewport.transparent_bg=true

#func _input(event):
	#if event is InputEventMouseMotion:

func _process(delta):
	pass
	

# Called when the root's viewport size changes (i.e. when the window is resized).
# This is done to handle multiple resolutions without losing quality.
#func _root_viewport_size_changed():
	# The viewport is resized depending on the window height.
	# To compensate for the larger resolution, the viewport sprite is scaled down.
	#viewport.size = Vector2.ONE * get_viewport().size.y
	#viewport_sprite.scale = Vector2(1, -1) * viewport_initial_size.y / get_viewport().size.y
