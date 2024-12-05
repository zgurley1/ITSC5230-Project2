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
		
		if (instance_exists(obj_player) && (distance_to_object(obj_player) <= attack_range))
		{
			current_path_position = path_position;
			pathx = x;
			pathy = y;
			path_end();
			state = ENEMY_STATE.Chase;
		
		} else {
			state = ENEMY_STATE.Follow;
		}
	break;
	
	case ENEMY_STATE.Chase:
		
		if ((!instance_exists(obj_player)) || (distance_to_object(obj_player) >= max_chase_range))
		{
			state = ENEMY_STATE.Return_To_Path;
			break;
		}
		
		direction = point_direction(x,y,obj_player.x,obj_player.y);
		speed = movement_speed * 0.75;
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
		path_end();
		sprite_index = spr_enemy_2_attack_right
		if (instance_exists(obj_tower))
		{
			var tower_in_range = instance_nearest(x,y,obj_tower);
			direction = point_direction(x,y,tower_in_range.x,tower_in_range.y);
			speed = movement_speed;
		}
		else
		{
			state = ENEMY_STATE.Follow;
		}
	
	break;
	
}


