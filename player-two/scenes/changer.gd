extends Control

func _on_arcade_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/1.tscn")

func _on_lan_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/2.tscn")


func _on_online_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/3.tscn")
