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
