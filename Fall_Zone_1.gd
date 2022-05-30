extends Area2D


func _ready():
	pass


func _on_Fall_Zone_1_body_entered(_body):
	get_tree().change_scene("res://Level_1.tscn")
