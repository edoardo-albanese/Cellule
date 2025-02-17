extends Control

@onready var credits = $MarginContainer/Credits

@onready var animale = $MarginContainer/Cells/EucarioteAnimale
@onready var vegetale = $MarginContainer/Cells/EucarioteVegetale
@onready var procariote = $MarginContainer/Cells/Procariote
@onready var unicellulare = $MarginContainer/Cells/Unicellulare

var cells = []

@onready var title = $MarginContainer/Title

func _ready():
	credits.text = "Versione " + ProjectSettings.get("application/config/version") + " - Edoardo Albanese"
	cells = [animale, vegetale, procariote, unicellulare]
	
	Global.cell_clicked.connect(on_cell_clicked)
	Global.back_clicked.connect(on_back_clicked)


func on_cell_clicked():
	transition(Global.cell_type)

func on_back_clicked():
	detransition()


func transition(except : int):
	for i in cells:
		i.z_index = 0
	cells[except].z_index = 1
	
	for i in cells:
		i.process_mode = Node.PROCESS_MODE_DISABLED
	cells[except].process_mode = Node.PROCESS_MODE_INHERIT
	
	var tween = create_tween()
	tween.set_parallel(true)
	tween.tween_property(title, "modulate", Color(0,0,0,0), 0.2).set_ease(Tween.EASE_IN_OUT)
	for i in cells:
		if cells.find(i) != except:
			tween.tween_property(i, "modulate", Color(0,0,0,0), 0.2).set_ease(Tween.EASE_IN_OUT)

func detransition():
	var tween = create_tween()
	tween.set_parallel(true)
	tween.tween_property(title, "modulate", Color(1,1,1,1), 0.25).set_ease(Tween.EASE_IN_OUT)
	for i in cells:
		i.z_index = 0
		tween.tween_property(i, "modulate", Color(1,1,1,1), 0.25).set_ease(Tween.EASE_IN_OUT)
		i.process_mode = Node.PROCESS_MODE_INHERIT
		
