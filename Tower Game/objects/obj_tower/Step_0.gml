/// @description Insert description here
// You can write your code in this editor

enemies_attacking = 0;
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



with (obj_enemy_tower)
{
	if (point_distance(x,y,other.x,other.y) <= other.attack_range)
	{
		other.enemies_attacking++;
		num = string(other.enemies_attacking);
		show_debug_message(num);
	}
}

