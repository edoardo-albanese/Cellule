extends Control

@onready var credits = $MarginContainer/Credits

func _ready():
	credits.text = "Versione " + ProjectSettings.get("application/config/version") + " - Edoardo Albanese"
