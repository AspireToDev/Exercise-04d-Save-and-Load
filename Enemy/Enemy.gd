extends KinematicBody2D

var health = 50

func _ready():
	pass 

func damage(d):
	health -= d
	if health <= 0:
		queue_free()
		Global.update_score(10)
	print(d)
