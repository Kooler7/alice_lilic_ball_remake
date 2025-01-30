#state.gd
class_name State
extends Node

var state_machine = null


func inner_unhandled_input(_event: InputEvent) -> void:
	pass

func inner_process(_delta: float) -> void:
	pass

func enter(_msg : Dictionary={}):
	pass

func exit():
	pass
