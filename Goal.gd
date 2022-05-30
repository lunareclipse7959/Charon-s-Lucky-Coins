extends Area2D


func _ready():
	pass


func _on_Goal_body_entered(body):
	get_tree().change_scene("res://Game_Over_Screen.tscn")
