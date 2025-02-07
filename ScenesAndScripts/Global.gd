extends Node

enum CELLULE {Animale, Vegetale, Procariote}

signal cell_clicked()

var cell_type : CELLULE
var cell_pos : Vector2

func _ready():
	cell_clicked.connect(on_cell_clicked)

func on_cell_clicked():
	print(cell_type, cell_pos)
