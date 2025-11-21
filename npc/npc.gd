extends CharacterBody3D
class_name NPC


const SPEED: float = 4.0

var player: CharacterBody3D = null
var target: Node3D 
@onready var nav_agent: NavigationAgent3D = $NavigationAgent3D

func _ready() -> void:
	player = GameManager.player
	target = player  # set to whatever the target is for NPC

func _physics_process(delta: float) -> void:
	velocity = Vector3.ZERO
	
	# update NPC target position
	set_target()
	var next_nav_point = nav_agent.get_next_path_position()
	velocity = (next_nav_point - global_position).normalized() * SPEED
	
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	move_and_slide()

func set_target() -> void:
	nav_agent.set_target_position(target.global_position)
