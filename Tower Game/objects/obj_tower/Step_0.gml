/// @description Insert description here
// You can write your code in this editor

with (obj_enemy)
{
	if (point_distance(x,y,other.x,other.y) <= other.attack_range)
	{
		other.target_id = id;
		if (other.alarm[0] == -1)
		{
			other.alarm[0] = other.fire_rate;
		}
		//instance_create_layer(other.x,other.y, "Instances_Player_Enemy", obj_arrow);
	}
}


