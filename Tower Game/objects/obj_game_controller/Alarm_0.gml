/// @description Enemy Spawner
// You can write your code in this editor
alarm_set(0, 30);

if (global.num_enemy <= 10)
{
	instance_create_layer(obj_enemy_spawn.x, obj_enemy_spawn.y, "Instances_Player_Enemy", obj_enemy);
	global.num_enemy++;
}

