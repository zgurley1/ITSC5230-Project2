/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (instance_exists(obj_enemy))
{
	var closest_enemy = instance_nearest(x,y,obj_enemy);

	if ((point_distance(x,y,closest_enemy.x,closest_enemy.y) <= attack_range) && can_fire)
	{
		audio_play_sound(snd_archer_tower_shoot, 0, false)
		can_fire = false;
	}
}

