/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

switch (state) {
	case ENEMY_STATE.Follow:
		tower_in_range = instance_nearest(x,y,obj_tower);
		if distance_to_object(tower_in_range) <= attack_range
		{
			target_tower = tower_in_range;
			state = ENEMY_STATE.Attack;
			break;
		}
		break;
	
	case ENEMY_STATE.Attack:
		if (instance_exists(target_tower) && target_tower.enemies_attacking <= target_tower.max_enemies)
		{
			path_end()
			//target_tower.enemies_attacking++;
			direction = point_direction(x,y,target_tower.x,target_tower.y)
			speed = movement_speed
		} else
		{
			state = ENEMY_STATE.Follow;
		}
	
	
}
	
	

