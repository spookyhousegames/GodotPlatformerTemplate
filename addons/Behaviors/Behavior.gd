class_name Behavior
extends Node
#The Behavior must be a child of a Node2D that holds all the behaviors
onready var container:BehaviorContainer = self.get_parent()
#This container is responsible for holding a refernce to the actor
onready var actor:Node = self.container.actor
func _act():
	#gets overwritten by subclasses
	pass
