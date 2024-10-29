// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_collision_x(offset){
	if place_meeting(obj_player.x + (offset * 2), obj_player.y, obj_boundary)
	{
		return true
	}
}

function player_collision_y(offset){
	if place_meeting(obj_player.x, obj_player.y + (offset * 2), obj_boundary)
	{
		return true
	}
}