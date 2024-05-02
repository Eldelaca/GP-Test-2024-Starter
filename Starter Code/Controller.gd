extends Control

@export var newIcon:PackedScene
var explosion
# Called when the node enters the scene tree for the first time.
func _ready():
	explosion = "res://explosion.tscn"
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_h_slider_value_changed(value):
	$Number.text = str(value)
	pass # Replace with function body.


func _on_spawn_button_pressed():
	var newIcon = load("res://mob.tscn")
	var onButtonPressed = newIcon.instantiate()
	add_child(onButtonPressed)
	print("working")
	pass # Replace with function body.


