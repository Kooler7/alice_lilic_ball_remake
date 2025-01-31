#player.gd
class_name Player
extends CharacterBody2D

var cursor_position: Vector2
var target_position: Vector2
var speed: int = 300

func _ready() -> void:
	cursor_position = position
