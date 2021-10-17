extends Sprite

onready var raycast = $RayCast2D

func _physics_process(delta):
	var energy = Global.energy
	energy += (delta * 20) if raycast.is_colliding() else -(delta * 50)
	energy = energy if energy >= 0 else 0
	energy = energy if energy <= 100 else 100
	Global.energy = energy
