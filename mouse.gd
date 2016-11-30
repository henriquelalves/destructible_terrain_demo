extends Area2D

var max_yields = 5

func _ready():
	set_fixed_process(true)

func _fixed_process(delta):
	for i in range(0, min(get_node("/root/global").yields.size(), max_yields)):
		get_node("/root/global").yields[0].divide()
		get_node("/root/global").yields.remove(0)
	
	set_pos(get_global_mouse_pos())
