class_name Behavior
extends Node
enum STATES {WAITING, RUNNING, DONE}
#The Behavior must be a child of a Node2D that holds all the behaviors
onready var container:BehaviorContainer = self.get_parent()
#This container is responsible for holding a refernce to the actor
onready var actor:Node = self.container.actor
var state = STATES.WAITING

#overwrite this function to define the action taken to begin the behavior
func _start_act():
	self.state = self.STATES.RUNNING

#overwrite this function to define the action that gets repeated in the _physics_process
func _physics_act():
	pass

#overwirte this function to define action taken at end of behavior
func _end_act():
	self.state = self.STATES.WAITING

