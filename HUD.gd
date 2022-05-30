extends CanvasLayer

var total_coins = 0

func _ready():
	$Coins.text = String(total_coins)

func _on_Coin_collected():
	total_coins += 1
	_ready()
