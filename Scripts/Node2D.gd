extends Node2D

var viewport_initial_size = Vector2()

onready var viewport = $Viewport
onready var viewport_sprite = $Panel2D


func _ready():
	viewport.transparent_bg=true
