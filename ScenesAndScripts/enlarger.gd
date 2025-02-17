extends Node
class_name Enlarger

@export var actor : Control
@export var duration : float = 0.5

var normal_size : Vector2
var normal_pos : Vector2

var central_pos : Vector2
var max_size : Vector2

func _ready():
	normal_size = actor.custom_minimum_size
	normal_pos = actor.global_position

func enlarge():
	max_size = Vector2(1920,1080)
	print(max_size)
	central_pos = Vector2.ZERO
	
	var tween = create_tween()
	tween.set_parallel(true)
	tween.tween_property(actor, "global_position", central_pos, duration).set_ease(Tween.EASE_IN_OUT)
	tween.tween_property(actor, "custom_minimum_size", max_size, duration).set_ease(Tween.EASE_IN_OUT)
	tween.tween_property(actor, "size", max_size, duration).set_ease(Tween.EASE_IN_OUT)


func minimize():
	var tween = create_tween()
	tween.set_parallel(true)
	tween.tween_property(actor, "global_position", normal_pos, duration).set_ease(Tween.EASE_IN_OUT)
	tween.tween_property(actor, "custom_minimum_size", normal_size, duration).set_ease(Tween.EASE_IN_OUT)
	tween.tween_property(actor, "size", normal_size, duration).set_ease(Tween.EASE_IN_OUT)
