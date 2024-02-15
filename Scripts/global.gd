extends Node;

var database : SQLite;

func _ready():
	database.path = "res://data.db";
	database.open_db();
