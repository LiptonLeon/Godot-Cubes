@tool
extends MultiMeshInstance3D

# Called when the node enters the scene tree for the first time.
func _ready():
	return
	var row_length = pow(multimesh.instance_count, 1/3);
	for i in range(multimesh.instance_count):
		var position = Transform3D()
		position = position.translated(Vector3(
			i/10000, 
			i/100%100, 
			i%100
			))
		multimesh.set_instance_transform(i, position)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
