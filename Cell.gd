extends CharacterBody2D

var sprites = [
	preload("res://Art/Background/cell1.svg"),
	preload("res://Art/Background/cell2.svg"),
	preload("res://Art/Background/cell3.svg")
]

@onready var sprite = $Sprite

var speed : float = randf_range(1, 10)

func _ready():
	sprite.texture = sprites[randi_range(0,2)]
	sprite.scale.x = randf()
	sprite.scale.y = sprite.scale.x
	rotation_degrees = randi_range(0,360)


func _physics_process(delta):
	rotation_degrees += randf_range(-delta, delta)
	velocity = transform.x * speed
	
	var p_size = 128 * scale.x
	
	position.x = wrapf(position.x, -p_size, 1920 + p_size)
	position.y = wrapf(position.y, -p_size, 1080 + p_size) 
	
	move_and_slide()
