extends Area2D


signal coin_collected

	
func _on_Coin_body_entered(_body): 
	emit_signal("coin_collected")
	queue_free()
