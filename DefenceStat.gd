extends Stat

class_name DefenceStat

export var max_value : int setget set_max_value
signal max_value_changed(new_max_value)

func set_max_value(new_value : int):
	if (max_value != new_value):
		max_value = new_value
		emit_signal("max_value_changed", max_value)

func set_value(new_value):
	.set_value(min(new_value, max_value))

func reset():
	set_value(max_value)
