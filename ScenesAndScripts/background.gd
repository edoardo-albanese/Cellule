extends Control

@export var cell : PackedScene
@export var cell_min : int
@export var cell_max : int

@onready var foreground = $Foreground

func _ready():
	for i in randi_range(cell_min, cell_max):
		var c : Node2D = cell.instantiate()
		c.global_position = Vector2(
			randi_range(0,1920),
			randi_range(0, 1080)
		)
		add_child(c)
	move_child(foreground, -1)
