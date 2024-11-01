/// @description Insert description here
// You can write your code in this editor

with (obj_enemy)
{
	if (point_distance(x,y,other.x,other.y) <= other.attack_range)
	{
		if (other.alarm[0] == -1)
		{
			other.target_id = id;
			other.alarm[0] = other.fire_rate;
		}
	}
}


