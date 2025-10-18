extends KinematicBody2D

const VELOCIDADE = 150
var movimento = Vector2.ZERO
var gravidade = 100
var esquerda = true

func _physics_process(delta):
	var direcao := Vector2(Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down") * VELOCIDADE)
	
	movimento.x = direcao.x
	move_and_slide(movimento)
	movimento.y += gravidade * delta
	
	if direcao.y < 0:
		pass
	
	
#	if movimento != Vector2.ZERO:
#		esquerda = movimento[0] < 0
#		$AnimatedSprite.flip_h = esquerda
#
#		$AnimatedSprite.play("Run")
#	else:
#		$AnimatedSprite.play("idle")
	
	
