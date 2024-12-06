/// @description Insert description here
// You can write your code in this editor

draw_self();
if (tower_health !=max_health)
{
	draw_healthbar(x-sprite_width/2,y + (sprite_width/2) + 20,x+sprite_width/2,y + (sprite_width/2) + 40,tower_health,c_black,c_red,c_lime,0,false,true);	
}