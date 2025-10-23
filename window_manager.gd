extends Node

func _ready() -> void:
	# Start in maximized windowed mode
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_MAXIMIZED)

func toggle_fullscreen() -> void:
	var full := DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_FULLSCREEN
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED if full else DisplayServer.WINDOW_MODE_FULLSCREEN)

func _unhandled_input(e: InputEvent) -> void:
	if e is InputEventKey and e.pressed and e.alt_pressed and e.keycode == KEY_ENTER:
		toggle_fullscreen()
