/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
global.num_enemy_tower--;

if instance_exists(target_tower)
{
	target_tower.enemies_attacking--;
}

//score += 50
