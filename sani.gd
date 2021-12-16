extends RigidBody2D
var taga = 3000 #appel
var speed = 100

func _physics_process(delta):
	applied_force=(transform.x*taga)if Input.is_action_pressed("GO") else Vector2()#appel
	$Particles2D.emitting = $"земля_проверялка".is_colliding()
	$Particles2D.process_material.set("initial_velocity", range_lerp(speed, 0, 5000, 0, 1000))
func _ready():
	pass 
