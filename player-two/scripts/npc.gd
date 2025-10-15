extends CharacterBody2D

# Assuming 'animated_sprite' is a reference to your AnimatedSprite2D node
@onready var animated_sprite = $AnimatedSprite2D

func _ready():
	animated_sprite.play("idle") # Plays the "idle" animation on scene start
