/// @description Insert description here
// You can write your code in this editor
draw_self();
if (obj_cheatcode_manager.draw_hitbox)
{
	draw_set_color(c_red);
	draw_set_alpha(5);

	draw_circle(x,y, attack_range, true);
}

if(damaged_now){
	shader_set(sdr_color_overlay);
	shader_set_uniform_f_array(_uniColor, _color);
	draw_self();
	shader_reset();
}

damaged_now = false;