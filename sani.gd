extends RigidBody2D
var taga = 3000 #appel

func _physics_process(delta):
	applied_force=(transform.x*taga)if Input.is_action_pressed("GO") else Vector2()#appel


func _ready():
	pass 
