#player_state.gd
class_name PlayerState
extends State
var player: Player

func _ready() -> void:
	player = owner as Player
