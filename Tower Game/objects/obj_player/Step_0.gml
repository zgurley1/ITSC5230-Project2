
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
		
		if (xspd != 0) or (yspd != 0) {
			// Update the player state
			state = PLAYER_STATE.Walking;
			obj_player.sprite_index = spr_soldier_walk;	
			break;
		}
		break;
	
	case PLAYER_STATE.Walking:
		// Update the sprite direction
		
		if xspd < 0 {
			image_xscale = -1
			dir = -1
		} else {
			image_xscale = 1
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
			
		if (xspd == 0) and (yspd == 0) {
			// Update the player state
			state = PLAYER_STATE.Idle;
			break;
		}
		break;
		
	case PLAYER_STATE.Harvesting:
	
		break;
	
}









if (state == PLAYER_STATE.Walking)
{
	
}