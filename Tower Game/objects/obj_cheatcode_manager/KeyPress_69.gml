/// @description Place a tower node
// You can write your code in this editor


if (cheats && draw_tower_node)
{
	instance_create_layer(player_x + ((width/2)*obj_player.image_xscale),player_y + height/2,"Instances_Nodes", obj_tower_node);

}
