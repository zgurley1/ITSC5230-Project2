/// @description Insert description here
// You can write your code in this editor

draw_self();
if (instance_exists(obj_player))
{
	var width_offset = ((sprite_width/2) + 20)
	var height_offset = (sprite_height/2 + 10)
	if (distance_to_object(obj_player) <= obj_player.attack_range)
	{
		draw_rectangle(x - width_offset,y + height_offset,x + width_offset, y + height_offset + 80, true);
		draw_text(x - width_offset + 5, y + height_offset + 5, "1: Archer");
		draw_text(x - width_offset + 5, y + height_offset + 20, "2: Wizzard");
		draw_text(x - width_offset + 5, y + height_offset + 35, "3: Catapult");
	}
}