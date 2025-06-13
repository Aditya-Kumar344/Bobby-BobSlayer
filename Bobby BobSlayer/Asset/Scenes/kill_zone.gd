extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		call_deferred("gameOver")

func gameOver():
	get_tree().change_scene_to_file("res://Asset/Scenes/GameOver.tscn")
	
