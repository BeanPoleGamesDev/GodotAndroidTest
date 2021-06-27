extends Control


var taps = 0

onready var count_node = $Center/VBox/Count
onready var anim = $Anim


func _input(event):
	match event.get_class():
		'InputEventScreenTouch':
			set_taps(taps + 1)

func set_taps(val)->void:
	taps = val
	count_node.text = "%04d" % taps
	anim.play("tap")
	
