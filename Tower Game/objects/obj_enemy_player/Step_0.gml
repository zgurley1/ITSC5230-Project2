/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if distance_to_object(obj_player) <= attack_range
	{
		path_end()
		direction = point_direction(x,y,obj_player.x,obj_player.y)
		speed = movement_speed
	}