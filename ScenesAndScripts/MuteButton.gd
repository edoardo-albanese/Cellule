extends TextureButton

@export var music_bus : String

var bus_index

@onready var sound = $Sound

func _ready():
	bus_index = AudioServer.get_bus_index(music_bus)

func _on_pressed():
	AudioServer.set_bus_mute(bus_index, not AudioServer.is_bus_mute(bus_index))
	sound.play()
