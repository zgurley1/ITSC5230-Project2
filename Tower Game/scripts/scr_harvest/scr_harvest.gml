// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function harvest_resource(resource_in_range){

if ((place_meeting(obj_player.x + (obj_player.attack_range * obj_player.xdir), obj_player.y,resource_in_range))
		|| (place_meeting(obj_player.x, obj_player.y + (obj_player.attack_range * obj_player.ydir),resource_in_range)))
		{
			return true
		}
}