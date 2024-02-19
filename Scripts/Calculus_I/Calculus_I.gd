extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_back_button_pressed():
	get_node(".").visible = false;

func _on_test_1_pressed():
	var Test_1 = get_node("Test_1");
	Test_1.visible = true;

func _on_test_2_pressed():
	var Test_2 = get_node("Test_2");
	Test_2.visible = true;

func _on_test_3_pressed():
	var Test_3 = get_node("Test_3");
	Test_3.visible = true;

func _on_final_pressed():
	var Final = get_node("Final");
	Final.visible = true;
