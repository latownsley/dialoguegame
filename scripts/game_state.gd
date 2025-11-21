extends Node
# extends AbstractGameState (need to make overall game states)

var has_met_npc_nathan: bool = false
var player_name: String = "Alastair"
# go by chosen name at the beginning and then can choose to keep going by your name or the born name later


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# set Globals / set as gamestate to reference across game
	GameManager.set_game_state(self)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
