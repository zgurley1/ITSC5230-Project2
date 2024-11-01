/// @description Insert description here
// You can write your code in this editor

with (obj_enemy)
{
	if (point_distance(x,y,other.x,other.y) <= other.attack_range)
	{
		if (other.can_fire)
		{
			var projectile = instance_create_layer(other.x,other.y, "Instances_Player_Enemy", other.ammo_type);
			projectile.target_id = id;
			other.can_fire = false;
		}
	}
}


