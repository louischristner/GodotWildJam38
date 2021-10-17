extends Node


const solar_scene = preload("res://Scenes/SolarScene.tscn")
const vegetable_scene = preload("res://Scenes/VegetableScene.tscn")

onready var energy_scenes = [ solar_scene ]
onready var production_scenes = [ vegetable_scene ]

onready var energy_scene_anchor = get_node("../EnergySceneAnchor")
onready var production_scene_anchor = get_node("../ProductionSceneAnchor")


# Called when the node enters the scene tree for the first time.
func _ready():
	var energy_scene = energy_scenes[0].instance()
	var production_scene = production_scenes[0].instance()
	energy_scene_anchor.add_child(energy_scene)
	production_scene_anchor.add_child(production_scene)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
