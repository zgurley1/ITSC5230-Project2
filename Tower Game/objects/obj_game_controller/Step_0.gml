/// @description Insert description here
// You can write your code in this editor

if score > win_score && !sequence_is_playing {
	room_goto(room_win_game)
}

if (global.num_enemy > 0 && !instance_exists(obj_enemy))
{
	alarm_set(0,time_between_waves);
	global.num_enemy = 0;
	wave_count++;
	max_enemy_num += 4;
	obj_enemy.enemy_health += 10;
	obj_enemy_tower.enemy_health += 10;
	obj_enemy_player.enemy_health += 10
	
}