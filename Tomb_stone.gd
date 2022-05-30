extends Area2D


func _ready():
	pass


func _on_Tombstone_body_entered(_body):
	get_tree().change_scene("res://Level_2.tscn")
