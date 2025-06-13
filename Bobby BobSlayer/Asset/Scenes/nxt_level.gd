extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		Global.current_scene = "res://Asset/Scenes/lvl2.tscn"
		call_deferred("nextLevel")
	
func nextLevel():
	get_tree().change_scene_to_file("res://Asset/Scenes/lvl2.tscn")
