extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/Courses.tscn");


func _on_test_1_pressed():
	get_tree().change_scene_to_file("res://Scenes/Calculus_I/Test_1.tscn");

func _on_test_2_pressed():
	get_tree().change_scene_to_file("res://Scenes/Calculus_I/Test_2.tscn");

func _on_test_3_pressed():
	get_tree().change_scene_to_file("res://Scenes/Calculus_I/Test_3.tscn");

func _on_final_pressed():
	get_tree().change_scene_to_file("res://Scenes/Calculus_I/Final.tscn")
