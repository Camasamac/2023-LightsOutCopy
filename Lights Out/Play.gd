extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Play_pressed():
	if Global.vr:
		print("vr")
		get_tree().change_scene("res://Maps/Map1.tscn")
	if Global.tutorialSkip == false and !Global.vr:
		get_tree().change_scene("res://TutorialScreen.tscn")
	if Global.tutorialSkip == true:
		get_tree().change_scene("res://Maps/Map1.tscn")
	#get_tree().change_scene("res://UI/other/audiowarning.tscn")


func _on_return_pressed():
	get_tree().change_scene("res://Launcher.tscn")


func _on_options_pressed():
	get_tree().change_scene("res://UI/Desktop/options.tscn")


func _on_Button_pressed():
	get_tree().change_scene("res://UI/other/credits.tscn")


func _on_creativeCommonsButton_pressed():
	get_tree().change_scene("res://CreativeCommonsReferences.tscn")
