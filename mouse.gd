extends Area2D

func _ready():
	set_process(true)

func _process(delta):
	set_pos(get_global_mouse_pos())
