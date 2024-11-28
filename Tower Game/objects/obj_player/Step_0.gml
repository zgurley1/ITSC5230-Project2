
if (health <=0)
{
	instance_destroy();
	return;
}	

var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));
var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));

xspd = (right-left) * movement_speed;
yspd = (down - up) * movement_speed;

if mouse_check_button_pressed(mb_left) {
	
	var seq = layer_sequence_create("overlay_sequences_layer", obj_player.x, obj_player.y, seq_player_attack)
	layer_sequence_play(seq)
}

switch (state) {
	case PLAYER_STATE.Idle:
		obj_player.sprite_index = spr_soldier_idle;	
		
		if ((xspd != 0) || (yspd != 0)) {
			// Update the player state
			state = PLAYER_STATE.Walking;
			obj_player.sprite_index = spr_soldier_walk;	
			break;
		}
		
		tree_in_range = instance_nearest(x,y, obj_tree);
		stone_in_range = instance_nearest(x,y, obj_stone);
		
		if  (harvest_resource(tree_in_range)) 
		{
			state = PLAYER_STATE.Harvesting;
			target_tree = tree_in_range;
			break;
		} else if (harvest_resource(stone_in_range))
		{
			state = PLAYER_STATE.Harvesting;
			target_stone = stone_in_range;
			break;
		}
		break;
	
	case PLAYER_STATE.Walking:
		// Update the sprite direction
		
		if xspd < 0 {
			image_xscale = -1
			xdir = -1
		} else if xspd > 0 {
			image_xscale = 1
			xdir = 1;
		} else {
			image_xscale = xdir;
		}
		
		// store the last y direction
		if yspd < 0 {
			ydir = -1;
		}
		else if yspd > 0 {
			ydir = 1
		}
	
		// Check for collisions
		if !player_collision_x(xspd)
		{
			x += xspd;
		}
		if !player_collision_y(yspd)
		{
			y += yspd;
		}
			
		if (xspd == 0) && (yspd == 0) {
			// Update the player state
			state = PLAYER_STATE.Idle;
			break;
		}
		break;
		
	case PLAYER_STATE.Harvesting:
		if (point_distance(x,y, tree_in_range.x, tree_in_range.y) < point_distance(x,y,stone_in_range.x,stone_in_range.y)) {
            if  (harvest_resource(target_tree) && keyboard_check(ord("E"))) {
				
				if (can_harvest)
				{
					obj_inventory.wood += 1;
					alarm_set(0, harvest_rate);
					can_harvest = false
                
					state = PLAYER_STATE.Idle;
					target_tree = noone;
				}
            }
        } else if (harvest_resource(target_stone) && keyboard_check(ord("E"))) {
            if (can_harvest)
				{
					obj_inventory.stone += 1;
					alarm_set(0, harvest_rate);
					can_harvest = false
                
					state = PLAYER_STATE.Idle;
					target_stone = noone;
				}
        }
        
		state = PLAYER_STATE.Idle;
        break;
	
}
