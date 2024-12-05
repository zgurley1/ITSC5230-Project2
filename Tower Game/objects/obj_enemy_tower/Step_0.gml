/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

switch (state) {
	case ENEMY_STATE.Follow:
		// check if the path has ended
		if (path_index == -1)
		{
			sprite_index = spr_enemy_3
			path_start(pth_route, movement_speed, path_action_stop, true);
			path_position = current_path_position;
			
		}
		
		// check enemy direction and update sprite direction
		if (last_x > x) {
			image_xscale = -1;
		}
		else {
			image_xscale = 1;
		}
		last_x = x;
		
		// find the closest tower and check to see if it is within attack range
		tower_in_range = instance_nearest(x,y,obj_tower);
		if distance_to_object(tower_in_range) <= chase_range
		{
			target_tower = tower_in_range;
			attack_range = target_tower.sprite_width/2
			state = ENEMY_STATE.Chase;
			break;
		}
		break;
	
	case ENEMY_STATE.Chase:
		// sprite_index = spr_enemy_3
		if (instance_exists(target_tower) && target_tower.enemies_attacking <= target_tower.max_enemies)
		{
			current_path_position = path_position;
			pathx = x;
			pathy = y;
			path_end();
			direction = point_direction(x,y,target_tower.x,target_tower.y);
			speed = movement_speed;
			if (x > target_tower.x) {
				image_xscale = -1;	
			}
		} else
		{
			state = ENEMY_STATE.Return_To_Path;
			break;
		}
		
		if distance_to_object(target_tower) <= attack_range
		{
			state = ENEMY_STATE.Attack;
			break;
		}
	break;
	
	case ENEMY_STATE.Return_To_Path:
		if (distance_to_point(pathx,pathy) <= 10) 
		{
			state = ENEMY_STATE.Follow;
			break;
		}
		else
		{
			direction = point_direction(x,y,pathx,pathy);
			speed = movement_speed;
		}
	
	break;
	
	case ENEMY_STATE.Attack:
		if (!instance_exists(target_tower))
		{
			state = ENEMY_STATE.Return_To_Path;
			break;
		}
		speed = 0;
		sprite_index = spr_enemy_3_attack
		if (can_attack)
		{
			alarm_set(0,10);
			can_attack = false;
		}
		
		break;
	
	
}
	
	

