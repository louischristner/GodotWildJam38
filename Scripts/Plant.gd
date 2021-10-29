extends KinematicBody2D

const GROW_SPEED = 20
const GROW_1_LIMIT = 50
const GROW_2_LIMIT = 100
const GROW_3_LIMIT = 150

onready var animated_sprite = $AnimatedSprite

var grow = .0


func _process(delta):
	grow += GROW_SPEED * delta * (Global.energy / 100.0)
	if grow > GROW_3_LIMIT:
		animated_sprite.play("grow3")
	elif grow > GROW_2_LIMIT:
		animated_sprite.play("grow2")
	elif grow > GROW_1_LIMIT:
		animated_sprite.play("grow1")
	else:
		animated_sprite.play("default")


func _on_KinematicBody2D_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.is_action_pressed("click") and grow > GROW_2_LIMIT:
		self.queue_free()
		if grow < GROW_3_LIMIT and grow > GROW_2_LIMIT:
			Global.food_score += 1
