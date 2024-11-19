/// @description Enemy Spawner
// You can write your code in this editor

game_start = true;

if (global.num_enemy <= max_enemy_num)
{
	alarm_set(0,enemy_spawn_rate);
}
var spawn = irandom_range(1,3);
	
if ((global.num_enemy_tower <= 3) || (global.num_enemy_player <= 3))
{
	if (spawn == 1) {
		instance_create_layer(obj_enemy_spawn.x,obj_enemy_spawn.y,"Instances_Player_Enemy",obj_enemy_tower)
		global.num_enemy_tower++;
	} else if (spawn == 2) {
		instance_create_layer(obj_enemy_spawn.x,obj_enemy_spawn.y,"Instances_Player_Enemy",obj_enemy_player)
		global.num_enemy_player++;
	} else {
		instance_create_layer(obj_enemy_spawn.x, obj_enemy_spawn.y, "Instances_Player_Enemy", obj_enemy);
	}	
} else {
	instance_create_layer(obj_enemy_spawn.x, obj_enemy_spawn.y, "Instances_Player_Enemy", obj_enemy);
}
	
global.num_enemy++;


