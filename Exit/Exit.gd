extends Area

var locked = true 

func _ready():
	$Light.light_color = Color(0, 0, 1, 1) 

func unlock():
	locked = false
	$Light.light_color = Color(0.333333, 0.419608, 0.184314, 1)

func _on_Exit_body_entered(body):
	if body.name == "Player" and not locked:
		var _scene = get_tree().change_scene("res://UI/Win.tscn")
