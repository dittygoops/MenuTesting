extends Node2D

var database : SQLite;

# Called when the node enters the scene tree for the first time.
func _ready():
	database = SQLite.new();
	database.path = "res://Sprites/data.db";
	database.open_db();
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_calculus_i_pressed():
	var Calculus_I = get_node("Calculus_I");
	Calculus_I.visible = true;

func _on_calculus_ii_pressed():
	var Calculus_II = get_node("Calculus_II");
	Calculus_II.visible = true;

func _on_calculus_iii_pressed():
	var Calculus_III = get_node("Calculus_III");
	Calculus_III.visible = true;

func _on_differential_equations_pressed():
	var Differential_Equations = get_node("Differential_Equations");
	Differential_Equations.visible = true;
