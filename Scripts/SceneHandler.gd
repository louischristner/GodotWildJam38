extends Node


const solar_scene = preload("res://Scenes/SolarScene.tscn")
const vegetable_scene = preload("res://Scenes/VegetableScene.tscn")

onready var energy_scenes = [ solar_scene ]
onready var production_scenes = [ vegetable_scene ]

onready var energy_scene_anchor = get_node("../EnergySceneAnchor")
onready var production_scene_anchor = get_node("../ProductionSceneAnchor")

var food_requirement = 1
var elapsed_time = 0
var food_time = 60


# Called when the node enters the scene tree for the first time.
func _ready():
	var energy_scene = energy_scenes[0].instance()
	var production_scene = production_scenes[0].instance()
	energy_scene_anchor.add_child(energy_scene)
	production_scene_anchor.add_child(production_scene)


func _process(delta):
	elapsed_time += delta
	Global.food_time = int(food_time - elapsed_time)
	if Global.food_score < 0:
		get_tree().change_scene("res://Scenes/LoseScene.tscn")
	if elapsed_time >= food_time:
		Global.food_score -= food_requirement
		food_time = food_time / 2 if food_time / 2 > 10 else 10
		food_requirement += 1
		elapsed_time = 0
