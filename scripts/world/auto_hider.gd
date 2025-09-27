extends CSGBox3D

var layer: int = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if GameManager.player.position.z > position.z:
		if layer != 1:
			set_to_background()
	else:
		if layer != 2:
			set_to_foreground()

func set_to_foreground() -> void:
	set_layer_mask_value(1, false)
	set_layer_mask_value(2, true)
	layer = 2
	
func set_to_background() -> void:
	set_layer_mask_value(2, false)
	set_layer_mask_value(1, true)
	layer = 1
