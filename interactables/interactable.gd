extends Area3D

@export var dialogue_resource: DialogueResource
@export var dialogue_start: String = "start"


func dialogue_action() -> void:
	DialogueManager.show_example_dialogue_balloon(dialogue_resource, dialogue_start)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
