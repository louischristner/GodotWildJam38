extends Sprite


func _physics_process(_delta):
	if $RayCast2D.is_colliding():
		print("Colliding with Sun");
