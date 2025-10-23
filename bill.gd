extends RigidBody2D

var _grabbed := false
var _grab_offset := Vector2.ZERO
var _last_mouse_pos := Vector2.ZERO
var _mouse_velocity := Vector2.ZERO
var _prev_freeze := false
var _prev_freeze_mode := RigidBody2D.FREEZE_MODE_KINEMATIC

func _ready() -> void:
	gravity_scale = 0.0
	linear_damp = 10.0
	angular_damp = 12.0
	input_pickable = true
	rotation = randf_range(-0.08, 0.08)

func _input_event(_vp, event, _shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed and !_grabbed:
			_start_grab()
		elif !event.pressed and _grabbed:
			_end_grab()

func _process(_dt: float) -> void:
	if _grabbed:
		var mouse := get_global_mouse_position()
		_mouse_velocity = mouse - _last_mouse_pos
		_last_mouse_pos = mouse
		global_position = mouse - _grab_offset

func _start_grab() -> void:
	_grabbed = true
	_grab_offset = get_global_mouse_position() - global_position
	_last_mouse_pos = get_global_mouse_position()
	_mouse_velocity = Vector2.ZERO

	# Remember previous freeze state
	_prev_freeze = freeze
	_prev_freeze_mode = freeze_mode

	# Freeze in KINEMATIC so we can move it precisely by setting position
	freeze_mode = RigidBody2D.FREEZE_MODE_KINEMATIC
	freeze = true
	lock_rotation = true

func _end_grab() -> void:
	_grabbed = false
	# Restore previous freeze state 
	freeze_mode = _prev_freeze_mode
	freeze = _prev_freeze
	lock_rotation = false

	# Give a gentle toss based on last mouse delta
	if !freeze:
		linear_velocity = _mouse_velocity * 120.0  # tune scalar to taste
