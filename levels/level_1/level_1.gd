#level_1.gd
extends Node

enum  States {
	Location_1,
	Location_2,
	Location_3,
	Location_4,
	Arcade,
	GameMenu
}

@onready var start_state : States = States.Location_1
@onready var camera : Camera2D = $LevelCamera

func _ready() -> void:
	check_level_state(start_state)

func check_level_state(new_state : States) -> void:
	var locations_arr : Array = $LevelViewer.get_children()
	for child : Node2D in locations_arr:
		child.get_tree().paused = true
		#print(child.name + " " + str(child.can_process()))
	match new_state:
		States.Location_1:
			set_level_state(locations_arr[States.Location_1])
		States.Location_2:
			set_level_state(locations_arr[States.Location_2])
		States.Location_3:
			set_level_state(locations_arr[States.Location_3])
		States.Location_4:
			set_level_state(locations_arr[States.Location_4])
		States.Arcade:
			set_level_state(locations_arr[States.Arcade])
		States.GameMenu:
			set_level_state(locations_arr[States.GameMenu])

func set_level_state(state_node : Node2D) -> void:
	camera.position = state_node.position
	state_node.get_tree().paused = false
	#print(state_node.name + " " + str(state.can_process()))
