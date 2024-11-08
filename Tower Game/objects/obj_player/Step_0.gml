
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

switch (state) {
	case PLAYER_STATE.Idle:
		obj_player.sprite_index = spr_soldier_idle;	
		
		if ((xspd != 0) || (yspd != 0)) {
			// Update the player state
			state = PLAYER_STATE.Walking;
			obj_player.sprite_index = spr_soldier_walk;	
			show_debug_message("Switching to walking state");
			break;
		}
		
		tree_in_range = instance_nearest(x,y, obj_tree);
		tir_x = string(tree_in_range.x);
		tir_y = string(tree_in_range.y);
		p_x = string(x);
		p_y = string(y);
		//show_debug_message("Player x " + p_x + " Player y " +p_y);
		//show_debug_message("tir_x " + tir_x + " tir_y " + tir_y);
		
		
		if  (point_distance(x,y,tree_in_range.x, tree_in_range.y) <= attack_range)
		{
			show_debug_message("Tree in range, switching states");
			state = PLAYER_STATE.Harvesting;
			target_tree = tree_in_range;
			break;
		}
		break;
	
	case PLAYER_STATE.Walking:
		// Update the sprite direction
		
		if xspd < 0 {
			image_xscale = -1
			dir = -1
		} else if xspd > 0 {
			image_xscale = 1
			dir = 1;
		} else {
			image_xscale = dir;
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
			show_debug_message("Switching to idle state");
			state = PLAYER_STATE.Idle;
			break;
		}
		break;
		
	case PLAYER_STATE.Harvesting:
		if ((target_tree) && (instance_exists(target_tree))) {
            if (point_distance(x, y, target_tree.x, target_tree.y) <= attack_range) {
                // Harvest wood (adjust values as needed)
                obj_inventory.wood += 1;
                
                // Destroy or mark the tree as harvested
                //instance_destroy(target_tree);
                
                // Return to idle after harvesting
                state = PLAYER_STATE.Idle;
                target_tree = noone;  // Clear the target
            }
        } else {
            // If the tree is gone, return to idle state
            state = PlayerState.IDLE;
        }
        break;
	
}
