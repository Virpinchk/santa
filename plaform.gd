extends StaticBody2D
export var plyer:NodePath
var playernode:RigidBody2D
var scam = false 


func _physics_process(delta):
	if not scam and playernode.transform.origin.x > position.x - 5000:
		var nexplotform = load("res://platform.tscn").instance()
		nexplotform.position = $endpoint.global_position 
		nexplotform.rotation_degrees = clamp(rand_range(-8, 8)+global_rotation_degrees, -30, 30)
		nexplotform.playernode = playernode
		$"..".add_child(nexplotform) 
		scam = true		
func _ready():
	if not playernode:
		playernode=get_node(plyer) # Replace with function body.
