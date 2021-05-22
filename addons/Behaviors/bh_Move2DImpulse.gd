extends Behavior

export var x_speed:float 
export var y_speed:float
 
func _start_act():
	._start_act()
	self.actor.velocity = Vector2(x_speed,y_speed)
