extends Area2D


func _ready():
	pass


func _on_Fall_Zone_body_entered(_body):
	get_tree().change_scene("res://Level_2.tscn")
