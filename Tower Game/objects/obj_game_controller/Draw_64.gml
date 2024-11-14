/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left);
draw_set_colour(c_black);
draw_text(32, 32, "Wood:");
draw_text(32, 48, "Stone:");
draw_set_colour(c_white);
var _wood = string(obj_inventory.wood);
draw_text(100, 32, _wood);
var _stone = string(obj_inventory.stone);
draw_text(100, 48, _stone);

draw_set_colour(c_black);
draw_text(32, 64, "Score:");
var _score = score;
draw_set_colour(c_white);
draw_text(100, 64, _score);

/*
while (!game_start) {
	draw_set_color(c_white);
	draw_text_transformed(room_width/2,20, "You have 20 seconds to collect resources", 2, 2, 0);
}
*/