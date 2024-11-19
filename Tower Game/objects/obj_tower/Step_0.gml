/// @description Insert description here
// You can write your code in this editor
enemies_attacking = 0;
if (tower_health <= 0) {
	instance_destroy();
	return;
}


if (instance_exists(obj_enemy))
{
	var closest_enemy = instance_nearest(x,y,obj_enemy);

	if ((point_distance(x,y,closest_enemy.x,closest_enemy.y) <= attack_range) && can_fire)
	{
		var projectile = instance_create_layer(x,y, "Instances_Player_Enemy", ammo_type);
		projectile.target_id = closest_enemy.id;
		can_fire = false;
	}
}

with (obj_enemy_tower)
{
	if (point_distance(x,y,other.x,other.y) <= other.attack_range)
	{
		other.enemies_attacking++;
		num = string(other.enemies_attacking);
		tower_name = string(other.ammo_type);
		show_debug_message("Tower Name: " + tower_name + "\tEnemies Attacking: " + num);
	}
}

