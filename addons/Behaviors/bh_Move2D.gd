extends Behavior
class_name Move2D

export var x_speed:float = 100
export var y_speed:float = 100
export var smooth_move:bool = false
export var x_acc:float = 5
export var y_acc:float = 5
#export var move_direction:Vector2 = Vector2.RIGHT


func _start_act():
	._start_act()
	if self.smooth_move:
		return 
	self.actor.velocity = Vector2(x_speed,y_speed)


func _physics_act():
	if self.actor.velocity.x < self.x_speed:
		self.actor.velocity.x += self.x_acc
	else:
		self.actor.velocity.x = self.x_speed
	if self.actor.velocity.y < self.y_speed:
		self.actor.velocity.y += y_acc
	else:
		self.actor.velocity.y = self.y_speed

