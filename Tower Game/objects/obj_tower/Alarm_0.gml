/// @description Launch Projectile
// You can write your code in this editor

/*
if (ammo_type != noone)
{
	var projectile = instance_create_layer(other.x,other.y, "Instances_Player_Enemy", ammo_type);
	projectile.target_id = target_id;
}
*/

alarm_set(0,fire_rate);
can_fire = true;