#walk.gd
extends PlayerState

func enter():
	print("Enter Walk")

func  inner_process(_delta: float) -> void:
	if player.position.distance_to(player.cursor_position) > 3:
		player.target_position = (player.cursor_position - player.position).normalized()
		player.velocity = player.target_position * player.speed
		player.move_and_slide()
	
	if player.position.distance_to(player.cursor_position) <= 3:
		state_machine.change_to("Idle")

func  exit():
	print("Exit Walk")
