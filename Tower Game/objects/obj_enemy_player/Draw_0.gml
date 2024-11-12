/// @description Insert description here
// You can write your code in this editor
draw_self();
if (obj_cheatcode_manager.draw_hitbox)
{
	draw_set_color(c_red);
	draw_set_alpha(5);

	draw_circle(x,y, attack_range, true);
	
	draw_set_color(c_blue);

	draw_circle(x,y, max_chase_range, true);
}