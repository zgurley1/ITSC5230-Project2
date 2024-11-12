/// @description Display Cheat Codes
// You can write your code in this editor
if (cheats)
{
	draw_set_halign(fa_left);
	draw_set_colour(c_black);
	draw_text(room_width - 450, 32, "F1:");
	draw_text(room_width - 450, 48, "F2:");
	draw_text(room_width - 450, 64, "F3:");
	draw_set_colour(c_white);
	draw_text(room_width - 420, 32, "Toggle Cheats");
	draw_text(room_width - 420, 48, "Toggle Hitboxes");
	draw_text(room_width - 420, 64, "Display number of enemies in tower range");
	
}