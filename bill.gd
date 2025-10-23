extends RigidBody2D

var _grabbed := false
var _grab_offset := Vector2.ZERO
var _last_mouse := Vector2.ZERO
var _mouse_delta := Vector2.ZERO

func _ready() -> void:
	gravity_scale = 0.0
	linear_damp = 10.0
	angular_damp = 12.0
	input_pickable = true
	can_sleep = false
	freeze_mode = RigidBody2D.FREEZE_MODE_KINEMATIC
	freeze = false

func _input_event(_vp, e, _shape_idx):
	if e is InputEventMouseButton and e.button_index == MOUSE_BUTTON_LEFT and e.pressed and !_grabbed:
		_start_grab()

# release can happen off the bill—catch globally
func _unhandled_input(e):
	if _grabbed and e is InputEventMouseButton and e.button_index == MOUSE_BUTTON_LEFT and !e.pressed:
		_end_grab()

func _process(_dt):
	if _grabbed:
		var m := get_global_mouse_position()
		_mouse_delta = m - _last_mouse
		_last_mouse = m
		global_position = m - _grab_offset

func _start_grab():
	_grabbed = true
	_last_mouse = get_global_mouse_position()
	_grab_offset = _last_mouse - global_position
	_mouse_delta = Vector2.ZERO
	freeze_mode = RigidBody2D.FREEZE_MODE_KINEMATIC
	freeze = true
	lock_rotation = true

func _end_grab():
	_grabbed = false
	lock_rotation = false
	freeze = false                      # ← always unfreeze
	linear_velocity = _mouse_delta * 120.0
