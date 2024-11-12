/// @description Insert description here
// You can write your code in this editor


if (instance_exists(obj_player)) {
	
	if distance_to_object(obj_player) <= obj_player.attack_range {
	
		if (keyboard_check_pressed(ord("1")) && can_place)
		{
			can_place = false;
			instance_create_layer(x,y - 40, "Instances_Tower", obj_tower_archer);
		}
		else if (keyboard_check_pressed(ord("2")) && can_place)
		{
			can_place = false;
			instance_create_layer(x,y - 40, "Instances_Tower", obj_tower_wizard);
		}
		else if (keyboard_check_pressed(ord("3")) && can_place)
		{
			can_place = false;
			instance_create_layer(x,y - 40, "Instances_Tower", obj_tower_catapult);
		}
	}
}

