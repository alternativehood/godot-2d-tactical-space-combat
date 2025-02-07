class_name ControllerAILaser
extends Controller


func _ready() -> void:
	var msg := {"targeting_length": weapon.targeting_length}
	weapon.connect("fire_stopped", self, "emit_signal", ["targeting", msg])
	
	yield(get_tree(), "idle_frame")
	emit_signal("targeting", {"targeting_length": weapon.targeting_length})


func get_class() -> String:
	return "ControllerAILaser"
