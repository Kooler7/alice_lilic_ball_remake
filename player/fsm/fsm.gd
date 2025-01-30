#fsm.gd
class_name StateMachine
extends Node

@export var start_state : NodePath

@onready var state : State = get_node(start_state)

func _ready() -> void:
	for child in get_children():
		child.state_machine = self
		state.enter()

func _unhandled_input(event: InputEvent) -> void:
	state.inner_unhandled_input(event)

func _process(delta: float) -> void:
	state.inner_process(delta)

func change_to(target_state : String, msg : Dictionary = {}):
	if not has_node(target_state):
		print("Trying get wrong state " + target_state)
		return
	state.exit()
	state = get_node(target_state)
	state.enter(msg)
	print("Current state " + state.name)
