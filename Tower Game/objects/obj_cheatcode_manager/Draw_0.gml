/// @description Draw tower placement node
// You can write your code in this editor


if (draw_tower_node && cheats)
{
	width = obj_tower_node.sprite_width;
	height = obj_tower_node.sprite_height;
	player_x = obj_player.x + (50 * obj_player.image_xscale);
	player_y = obj_player.y -(height/2);
	
	draw_rectangle(player_x,player_y,player_x + (width * obj_player.image_xscale),player_y + height,true);
}