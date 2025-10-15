extends CharacterBody2D

const SPEED := 50.0

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _ready() -> void:
	animated_sprite_2d.play()


func _physics_process(_delta) -> void:
	var direction := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")

	move_player(direction)
	animate_player(direction)


func move_player(direction) -> void:
	if direction:
		velocity = direction * SPEED
	else:
		velocity = Vector2.ZERO

	move_and_slide()


func animate_player(direction) -> void:
	if not direction:
		if animated_sprite_2d.animation == "walk_front":
			animated_sprite_2d.animation = "idle_front"
		elif animated_sprite_2d.animation == "walk_back":
			animated_sprite_2d.animation = "idle_back"
		elif animated_sprite_2d.animation == "walk_right":
			animated_sprite_2d.animation = "idle_right"
		elif animated_sprite_2d.animation == "walk_left":
			animated_sprite_2d.animation = "idle_left"
		return

	if direction.x == 0:
		if direction.y > 0:
			animated_sprite_2d.animation = "walk_front"
		elif direction.y < 0:
			animated_sprite_2d.animation = "walk_back"
		return

	if direction.x > 0:
		animated_sprite_2d.animation = "walk_right"
	elif direction.x < 0:
		animated_sprite_2d.animation = "walk_left"
