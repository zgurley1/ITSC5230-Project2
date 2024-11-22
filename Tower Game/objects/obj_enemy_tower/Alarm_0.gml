/// @description Insert description here
// You can write your code in this editor

if (instance_exists(target_tower))
{
	target_tower.tower_health -= damage;
	target_tower.alarm[1] = target_tower.heal_buffer;
}

can_attack = true;