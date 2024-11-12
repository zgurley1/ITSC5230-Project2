/// @description Insert description here
// You can write your code in this editor

// Draw a circle around the tower to display range
draw_self();
if (obj_cheatcode_manager.draw_hitbox)
{
	draw_set_color(c_red);
	draw_set_alpha(5);

	draw_circle(x,y, attack_range, true);
}

if (obj_cheatcode_manager.draw_enemy_attacking_count)
{
	var num_enemies_attacking = string(enemies_attacking);
	draw_text(x, y + (sprite_height - 50), num_enemies_attacking);
}