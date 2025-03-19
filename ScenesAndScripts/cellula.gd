extends Control

@export var text1 : String
@export var text2 : String
@export var type : Global.CELLULE

@onready var up_text = $Container/MarginContainer/Center/UpText
@onready var image = $Container/MarginContainer/Center/Image
@onready var down_text = $Container/MarginContainer/Center/DownText

@onready var normal_size = image.custom_minimum_size

@onready var enlarger = $Enlarger
@onready var container = $Container

@onready var animation_player = $AnimationPlayer
@onready var title = $Container/MarginContainer/Title

@onready var open = $Sounds/Open
@onready var close = $Sounds/Close

@onready var description_button: Button = $Container/MarginContainer/Description/DescriptionButton

func _ready():
	up_text.text = text1
	down_text.text = text2
	image.pivot_offset = Vector2(image.size.x / 2, image.size.y / 2)
	container.custom_minimum_size = container.size

func _process(delta):
	if !image.disabled:
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
	Global.cell_clicked.emit()
	enlarger.enlarge()
	open.play()
	
	title.text = text1 + " " + text2
	animation_player.play("transition")


func _on_back_button_pressed():
	if image.disabled and !description_button.disabled:
		Global.back_clicked.emit()
		enlarger.minimize()
		animation_player.play("detransition")
		close.play()
