extends Control

@onready var credits = $MarginContainer/Credits

@onready var animale = $MarginContainer/Cells/EucarioteAnimale
@onready var vegetale = $MarginContainer/Cells/EucarioteVegetale
@onready var procariote = $MarginContainer/Cells/Procariote

@onready var title = $MarginContainer/Title

func _ready():
	credits.text = "Versione " + ProjectSettings.get("application/config/version") + " - Edoardo Albanese"
	Global.cell_clicked.connect(on_cell_clicked)

func on_cell_clicked():
	var tween = create_tween()
	tween.set_parallel(true)
	tween.tween_property(title, "modulate", Color(0,0,0,0), 0.2).set_ease(Tween.EASE_IN_OUT)
	
	match Global.cell_type:
		Global.CELLULE.Animale:
			animale.z_index += 1
			vegetale.process_mode = Node.PROCESS_MODE_DISABLED
			procariote.process_mode = Node.PROCESS_MODE_DISABLED
			tween.tween_property(vegetale, "modulate", Color(0,0,0,0), 0.2).set_ease(Tween.EASE_IN_OUT)
			tween.tween_property(procariote, "modulate", Color(0,0,0,0), 0.2).set_ease(Tween.EASE_IN_OUT)
		Global.CELLULE.Vegetale:
			vegetale.z_index += 1
			animale.process_mode = Node.PROCESS_MODE_DISABLED
			procariote.process_mode = Node.PROCESS_MODE_DISABLED
			tween.tween_property(animale, "modulate", Color(0,0,0,0), 0.2).set_ease(Tween.EASE_IN_OUT)
			tween.tween_property(procariote, "modulate", Color(0,0,0,0), 0.2).set_ease(Tween.EASE_IN_OUT)
		Global.CELLULE.Procariote:
			procariote.z_index += 1
			animale.process_mode = Node.PROCESS_MODE_DISABLED
			vegetale.process_mode = Node.PROCESS_MODE_DISABLED
			tween.tween_property(animale, "modulate", Color(0,0,0,0), 0.2).set_ease(Tween.EASE_IN_OUT)
			tween.tween_property(vegetale, "modulate", Color(0,0,0,0), 0.2).set_ease(Tween.EASE_IN_OUT)
