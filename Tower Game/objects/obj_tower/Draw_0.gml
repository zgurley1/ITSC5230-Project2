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
	draw_text(x, y + (sprite_height - 25), num_enemies_attacking);
}

if (tower_health !=max_health)
{
	draw_healthbar(x-sprite_width/2,y + (sprite_width/2) + 20,x+sprite_width/2,y + (sprite_width/2) + 40,tower_health,c_black,c_red,c_lime,0,false,true);	
}

//draw_text (x, y + (sprite_height - 25), upgrade_num)
draw_text(x, y + (sprite_height - 50), "Level: " + string(upgrade_num))

