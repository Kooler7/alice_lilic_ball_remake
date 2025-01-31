#state.gd
class_name State
extends Node

var state_machine = null

func inner_unhandled_input(_event: InputEvent) -> void:
	pass

func inner_process(delta: float) -> void:
	pass

func enter() -> void:
	pass

func exit() -> void:
	pass
