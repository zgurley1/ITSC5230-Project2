/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

switch (state) {
	case ENEMY_STATE.Follow:
		if (path_index == -1)
		{
			path_start(pth_route, movement_speed, path_action_stop, true);
		}
		tower_in_range = instance_nearest(x,y,obj_tower);
		if distance_to_object(tower_in_range) <= chase_range
		{
			target_tower = tower_in_range;
			state = ENEMY_STATE.Chase;
			break;
		}
		break;
	
	case ENEMY_STATE.Chase:
		if (instance_exists(target_tower) && target_tower.enemies_attacking <= target_tower.max_enemies)
		{
			path_end()
			direction = point_direction(x,y,target_tower.x,target_tower.y)
			speed = movement_speed
		} else
		{
			state = ENEMY_STATE.Follow;
			break;
		}
		
		if distance_to_object(target_tower) <= attack_range
		{
			state = ENEMY_STATE.Attack;
			break;
		}
	break;
	
	
	
	case ENEMY_STATE.Attack:
		speed = 0;
		
		// Attack animation code here
		
		break;
	
	
}
	
	

