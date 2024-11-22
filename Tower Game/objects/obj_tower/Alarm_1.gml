/// @description Tower self heal
// You can write your code in this editor

tower_health += 1;

if tower_health < max_health
{
	alarm_set(1, 1)
}