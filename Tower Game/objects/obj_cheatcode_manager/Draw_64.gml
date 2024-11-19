/// @description Display Cheat Codes
// You can write your code in this editor
if (cheats)
{
	draw_set_halign(fa_left);
	draw_set_colour(c_black);
	draw_text(room_width - 450, 32, "F1:");
	draw_text(room_width - 450, 48, "F2:");
	draw_text(room_width - 450, 64, "F3:");
	draw_text(room_width - 450, 80, "F4:");
	draw_text(room_width - 450, 96, "F5:");
	draw_text(room_width - 450, 112, "F6:");
	draw_set_colour(c_white);
	draw_text(room_width - 420, 32, "Toggle Cheats");
	draw_text(room_width - 420, 48, "Toggle Hitboxes");
	draw_text(room_width - 420, 64, "Display number of enemies in tower range");
	draw_text(room_width - 420, 80, "Add 10 of each material");
	draw_text(room_width - 420, 96, "Create Tower Node (E)");
	draw_text(room_width - 420, 112, "Spawn Tower Enemy");
	
}