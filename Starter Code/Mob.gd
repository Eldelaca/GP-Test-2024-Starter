extends PhysicsBody2D


var velocity = Vector2(250, 250)


func _ready():
	
	explosion = load("res://explosion.tscn")
func _physics_process(delta):
	var collision_info = move_and_collide(velocity * delta)
	if collision_info:
		velocity = velocity.bounce(collision_info.get_normal())
