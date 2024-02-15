extends Node2D

var database : SQLite

# Called when the node enters the scene tree for the first time.
func _ready():
	database =SQLite.new();
	database.path = "res://data.db";
	database.open_db();
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_calculus_i_pressed():
	get_tree().change_scene_to_file("res://Scenes/Calculus_I/Calculus_I.tscn");

func _on_calculus_ii_pressed():
	get_tree().change_scene_to_file("res://Scenes/Calculus_II.tscn");

func _on_calculus_iii_pressed():
	get_tree().change_scene_to_file("res://Scenes/Calculus_III.tscn");

func _on_differential_equations_pressed():
	get_tree().change_scene_to_file("res://Scenes/Differential_Equations.tscn");
