extends Resource

class_name Stat

export var value : int setget _set_value
signal value_changed(new_value)

func _set_value(new_value):
	if value != new_value:
		value = new_value
		emit_signal("value_changed", new_value)