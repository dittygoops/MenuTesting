extends Node2D

var database : SQLite;
var index : int;
var flashcards : Array;

# Called when the node enters the scene tree for the first time.
func _ready():
	database = SQLite.new();
	database.path = "res://Sprites/data.db";
	database.open_db();
	
	flashcards = database.select_rows("flashcards", "setId = 1", ["*"]);
	index = 0;
	
	get_node("UI/HBoxContainer/ProblemString").text = flashcards[index]["probString"];
	get_node("UI/HBoxContainer/AnswerString").text = flashcards[index]["ansString"];


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_back_button_pressed():
	get_node(".").visible = false;


func _on_fc_back_button_pressed():
	index = (index - 1) % 4;
	get_node("UI/HBoxContainer/ProblemString").text = flashcards[index]["probString"];
	get_node("UI/HBoxContainer/AnswerString").text = flashcards[index]["ansString"];


func _on_fc_forward_button_pressed():
	index = (index + 1) % 4;
	get_node("UI/HBoxContainer/ProblemString").text = flashcards[index]["probString"];
	get_node("UI/HBoxContainer/AnswerString").text = flashcards[index]["ansString"];
