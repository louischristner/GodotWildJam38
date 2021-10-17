extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var angle

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	pass
	#var direction = (get_global_mouse_position() - global_position)
	#var angleTo = transform.y.angle_to(direction)
	#rotate(sign(angleTo) * min(delta * 1.5, abs(angleTo)))
	
	#if $RayCast2D.is_colliding():
		#print("Colliding with Sun");

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
