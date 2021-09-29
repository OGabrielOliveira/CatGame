extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

const VELOCIDADE_MAXIMA_X = 500
const VELOCIDADE_MAXIMA_Y = 500

var velocidade = 120
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direcao = 0
	
	velocidade = 120
	if Input.is_action_pressed("ui_run"):
		velocidade = 200
		
	if Input.is_action_pressed("ui_left"):
		$AnimatedSprite.flip_h = true
		direcao = -1
	
	if Input.is_action_pressed("ui_right"):
		$AnimatedSprite.flip_h = false		
		direcao = 1
	
	var velocidade_x = clamp((direcao * velocidade * delta), VELOCIDADE_MAXIMA_X * -1, VELOCIDADE_MAXIMA_X)
	
	translate(Vector2(velocidade_x, 0))
	
		
	
