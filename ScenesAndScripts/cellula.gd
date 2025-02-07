extends Control

@export var text1 : String
@export var text2 : String
@export var type : Global.CELLULE

@onready var up_text = $VBoxContainer/UpText
@onready var down_text = $VBoxContainer/DownText
@onready var image = $VBoxContainer/Image

@onready var normal_size = image.custom_minimum_size

func _ready():
	up_text.text = text1
	down_text.text = text2
	image.pivot_offset = Vector2(image.size.x / 2, image.size.y / 2)

func _process(delta):
	if image.is_hovered():
		image.custom_minimum_size.x = lerpf(image.custom_minimum_size.x, normal_size.x * 1.5, delta * 25)
		image.custom_minimum_size.y = lerpf(image.custom_minimum_size.y, normal_size.y * 1.5, delta * 25)
	else:
		image.custom_minimum_size.x = lerpf(image.custom_minimum_size.x, normal_size.x, delta * 25)
		image.custom_minimum_size.y = lerpf(image.custom_minimum_size.y, normal_size.y, delta * 25)
		image.size.x = lerpf(image.size.x, normal_size.x, delta * 25)
		image.size.y = lerpf(image.size.y, normal_size.y, delta * 25)


func _on_image_pressed():
	Global.cell_type = type
	Global.cell_pos = image.global_position
	Global.cell_clicked.emit()
