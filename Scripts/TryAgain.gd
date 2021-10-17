extends KinematicBody2D



func _on_KinematicBody2D_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		print("yes")
		Global.food_score = 0
		Global.food_time = 60
		Global.energy = 0
		get_tree().change_scene("res://Scenes/MainView.tscn")
