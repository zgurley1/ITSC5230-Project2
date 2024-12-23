// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_collision_x(offset){
	if place_meeting(obj_player.x + (offset), obj_player.y, obj_boundary)
	{
		return true
	}
	else if place_meeting(obj_player.x + (offset), obj_player.y, obj_enemy_spawn)
	{
		return true
	}
	else if place_meeting(obj_player.x + (offset), obj_player.y, obj_tower)
	{
		return true
	}
	else if place_meeting(obj_player.x + (offset), obj_player.y, obj_blocker)
	{
		return true
	}
	else if place_meeting(obj_player.x + (offset), obj_player.y, obj_enemy)
	{
		return true
	}
	else if place_meeting(obj_player.x + (offset), obj_player.y, obj_tower_node)
	{
		return true
	}
}

function player_collision_y(offset){
	if place_meeting(obj_player.x, obj_player.y + (offset), obj_boundary)
	{
		return true
	}
	else if place_meeting(obj_player.x, obj_player.y + (offset), obj_enemy_spawn)
	{
		return true
	}
	else if place_meeting(obj_player.x, obj_player.y + (offset), obj_tower)
	{
		return true
	}
	else if place_meeting(obj_player.x, obj_player.y + (offset), obj_blocker)
	{
		return true
	}
	else if place_meeting(obj_player.x, obj_player.y + (offset), obj_enemy)
	{
		return true
	}
	else if place_meeting(obj_player.x, obj_player.y + (offset), obj_tower_node)
	{
		return true
	}
}