/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

switch (state) {
	case ENEMY_STATE.Follow:
		if (path_index == -1)
		{
			sprite_index = spr_enemy_2_walk_right
			path_start(pth_route, movement_speed, path_action_stop, true);
		}
		
		
		// check enemy direction and update sprite direction
		if (last_x > x) {
			image_xscale = -1;
		}
		else {
			image_xscale = 1;
		}
		last_x = x;
		
		if (instance_exists(obj_player))
		{
			if distance_to_object(obj_player) <= attack_range
				{
					state = ENEMY_STATE.Chase;
				}
		} else {
			state = ENEMY_STATE.Follow;
		}
	break;
	
	case ENEMY_STATE.Chase:
		
		if ((!instance_exists(obj_player)) || (distance_to_object(obj_player) >= max_chase_range))
		{
			state = ENEMY_STATE.Attack;
			break;
		}
		
		path_end()
		direction = point_direction(x,y,obj_player.x,obj_player.y);
		speed = movement_speed * 0.75;
	break;
	
	case ENEMY_STATE.Attack:
		path_end();
		sprite_index = spr_enemy_2_attack_right
		var tower_in_range = instance_nearest(x,y,obj_tower);
		direction = point_direction(x,y,tower_in_range.x,tower_in_range.y);
		speed = movement_speed;
	
	break;
	
}


