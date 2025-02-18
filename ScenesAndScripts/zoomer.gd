extends Node
class_name Zoomer

@export var actor : BaseButton
@export var multiplier : float = 1.5

var base_scale : Vector2

func _ready():
	actor.pivot_offset.x = actor.size.x / 2
	actor.pivot_offset.y = actor.size.y / 2
	base_scale = actor.scale

func _process(delta):
	if actor.is_hovered():
		actor.scale.x = lerpf(actor.scale.x, base_scale.x * multiplier, delta * 20)
		actor.scale.y = lerpf(actor.scale.y, base_scale.y * multiplier, delta * 20)
	else:
		actor.scale.x = lerpf(actor.scale.x, base_scale.x, delta * 20)
		actor.scale.y = lerpf(actor.scale.y, base_scale.y, delta * 20)
