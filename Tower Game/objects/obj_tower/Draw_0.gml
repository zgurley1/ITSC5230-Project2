/// @description Insert description here
// You can write your code in this editor

// Draw a circle around the tower to display range
draw_self();

draw_set_color(c_red);
draw_set_alpha(5);

draw_circle(x,y, attack_range, true);