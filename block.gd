extends Area2D

var size = 32 
export(int) var min_size = 4

func _ready():
	connect("area_enter", self, "_on_blockx32_area_enter")

func _on_blockx32_area_enter(a):
	if size <= min_size:
		queue_free()
		return
	for i in range (0,2):
		var newNode = duplicate()
		newNode.size = size/2
		get_parent().add_child(newNode)
		newNode.set_scale(get_scale()/2)
		newNode.set_pos(Vector2(get_pos().x - size/4 + (size/2 * i), get_pos().y - size/4))
	for i in range (0,2):
		var newNode = duplicate()
		newNode.size = size/2
		get_parent().add_child(newNode)
		newNode.set_scale(get_scale()/2)
		newNode.set_pos(Vector2(get_pos().x - size/4 + (size/2 * i), get_pos().y + size/4))
	queue_free()
