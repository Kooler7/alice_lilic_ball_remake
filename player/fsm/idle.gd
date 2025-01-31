#idle.gd
extends PlayerState


func  enter():
	player.velocity = Vector2.ZERO
	print("Enter Idle")

func inner_process(delta: float):
	if Input.is_action_just_pressed("left_click"):
		player.cursor_position = player.get_global_mouse_position()
		state_machine.change_to("Walk")

func  exit():
	print("Exit Idle")
