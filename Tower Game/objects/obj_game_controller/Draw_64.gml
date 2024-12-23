/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_orange)
draw_set_alpha(.75)
draw_rectangle(0,0,room_width,110,false)
//draw_rectangle(0,0,50,room_height,false)
//draw_rectangle(room_width-50,0,room_width,room_height,false)

draw_set_alpha(1);

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

draw_set_colour(c_black);
draw_text(32, 96, "Cost:");
draw_set_colour(c_white);
draw_text(32, 112, "Archer:  5 wood");
draw_text(32, 128, "Catapult:  10 wood");
draw_text(32, 144, "Wizard:  5 wood + 5 stone");



if (!game_start) {
	var time = string(floor(game_start_delay/60));
	
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_text_transformed(room_width/2,20, "You have " + time + " seconds to collect resources", 2, 2, 0);
	game_start_delay--;	
} else {
	var wave = string(wave_count);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_text_transformed(room_width/2,20, "Wave: " + wave, 2, 2, 0);
	
	draw_healthbar(room_width/2 - 200, 80,room_width/2 + 200, 100,obj_town_hall.tower_health,c_black,c_red,c_lime,0,false,true);
}
