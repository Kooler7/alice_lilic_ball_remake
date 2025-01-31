#fsm.gd
class_name StateMachine
extends Node

@export var start_state: NodePath

@onready var current_state = get_node(start_state)


func _ready() -> void:
	for child in get_children():
		child.state_machine = self
	current_state.enter()

func  _unhandled_input(event: InputEvent) -> void:
	current_state.inner_unhandled_input(event)

func _process(delta: float) -> void:
	current_state.inner_process(delta)

func change_to(target_state: String) -> void:
	if not has_node(target_state):
		return
	current_state.exit()
	current_state = get_node(target_state)
	current_state.enter()
