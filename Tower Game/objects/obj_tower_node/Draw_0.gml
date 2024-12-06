/// @description Insert description here
// You can write your code in this editor

draw_self();
if (instance_exists(obj_player))
{
	var width_offset = ((obj_tower_node.sprite_width/2) + 20)
	var height_offset = (obj_tower_node.sprite_height/2 + 10)
	
	var text_x = x - width_offset + 5;
	var text_y = y + height_offset + 5;
	if (distance_to_object(obj_player) <= obj_player.attack_range)
	{
		draw_set_halign(fa_left);
		
		if (state == TOWER_NODE_STATE.Empty) 
		{
			draw_rectangle(x - width_offset,y + height_offset,x + width_offset, y + height_offset + 80, true);
			if (afford_archer)
			{
				draw_set_color(c_white);
				draw_text(text_x, text_y, "1: Archer");
			}
			else
			{
				draw_set_color(c_red);
				draw_text(text_x, text_y, "1: Archer");
			}
			
			if (afford_wizard)
			{
				draw_set_color(c_white);
				draw_text(text_x, text_y + 20, "2: Wizzard");
			}
			else
			{
				draw_set_color(c_red);
				draw_text(text_x, text_y + 20, "2: Wizzard");
			}
			
			if (afford_catapult)
			{
				draw_set_color(c_white);
				draw_text(text_x, text_y + 40, "3: Catapult");
			}
			else
			{
				draw_set_color(c_red);
				draw_text(text_x, text_y + 40, "3: Catapult");
			}
			
			
			
			
		} else
		{
			draw_rectangle(x - width_offset,y + height_offset,x + width_offset + 50, y + height_offset + 80, true);
			draw_set_color(c_white);
			draw_text(text_x, text_y, "1: Remove");
			
			if (instance_exists(tower))
			{
				if (canHeal(tower)) {
					draw_set_color(c_white);
					draw_text(text_x, text_y + 20, "2: Heal Tower");
				}
				else {
					draw_set_color(c_red);
					draw_text(text_x, text_y + 20, "2: Heal Tower");
				}
				
				if (canUpgrade(tower)) {
					draw_set_color(c_white);
					draw_text(text_x, text_y + 40, "3: Upgrade Tower");
				}
				else {
					draw_set_color(c_red);
					draw_text(text_x, text_y + 40, "3: Upgrade Tower");
				}
			}
			
		}
		
	}
}