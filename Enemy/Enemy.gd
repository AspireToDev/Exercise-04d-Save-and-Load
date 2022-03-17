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


func _on_Area2D_body_entered(body):
	if body.has_method("damage") and not self:
		print("Collide")
		body.damage(30)
		queue_free()
