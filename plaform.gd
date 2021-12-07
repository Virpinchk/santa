extends StaticBody2D
export var plyer:NodePath
var playernode:RigidBody2D
var scam = false 


func _physics_process(delta):
	if playernode.position.x > $endpoint.global_position.x and not scam:
		var nexplotform = load("res://platform.tscn").instance()
		nexplotform.position = $endpoint.global_position 
		nexplotform.playernode = playernode
		$"..".add_child(nexplotform) 
		
func _ready():
	if not playernode:
		playernode=get_node(plyer) # Replace with function body.
