/// @description Insert description here
// You can write your code in this editor

draw_self();

if (instance_exists(obj_player))
{
	var width_offset = ((obj_town_hall.sprite_width/2) + 20)
	var height_offset = (obj_town_hall.sprite_height/2 + 10)
	
	var text_x = x - width_offset + 5;
	var text_y = y + height_offset + 5;
	if (distance_to_object(obj_player) <= obj_player.attack_range)
	{
		draw_set_halign(fa_left);
		draw_rectangle(x - width_offset,y + height_offset,x + width_offset - 20, y + height_offset + 80, true);
		
		if (canUpgrade(obj_town_hall))
		{
			draw_set_color(c_white);
			draw_text(text_x, text_y, "1: Upgrade Town Hall");
		} else 
		{
			draw_set_color(c_red);
			draw_text(text_x, text_y, "1: Upgrade Town Hall");
		}
		
		if canHeal(obj_town_hall)
		{
			draw_set_color(c_white);
			draw_text(text_x, text_y + 20, "2: Heal Town Hall");
		} else
		{
			draw_set_color(c_red);
			draw_text(text_x, text_y + 20, "2: Heal Town Hall");
		}
	}
}