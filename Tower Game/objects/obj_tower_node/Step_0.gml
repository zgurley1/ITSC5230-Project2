/// @description Insert description here
// You can write your code in this editor


if (instance_exists(obj_player)) {
	
	if distance_to_object(obj_player) <= obj_player.attack_range {
		if ((obj_inventory.wood >= obj_tower_archer.build_cost_wood) && (obj_inventory.stone >= obj_tower_archer.build_cost_stone))
		{
			afford_archer = true;
		} else {
			afford_archer = false;
		}
		
		if ((obj_inventory.wood >= obj_tower_wizard.build_cost_wood) && (obj_inventory.stone >= obj_tower_wizard.build_cost_stone))
		{
			afford_wizard = true;
		} else {
			afford_wizard = false;
		}
		
		if ((obj_inventory.wood >= obj_tower_catapult.build_cost_wood) && (obj_inventory.stone >= obj_tower_catapult.build_cost_stone))
		{
			afford_catapult = true;
		} else {
			afford_catapult = false;
		}
		
	
		if (keyboard_check_pressed(ord("1")) && can_place && afford_archer)
		{
			can_place = false;
			instance_create_layer(x,y - 40, "Instances_Tower", obj_tower_archer);
			obj_inventory.wood -= obj_tower_archer.build_cost_wood;
			obj_inventory.stone -= obj_tower_archer.build_cost_stone;
		}
		else if (keyboard_check_pressed(ord("2")) && can_place && afford_wizard)
		{
			can_place = false;
			instance_create_layer(x,y - 40, "Instances_Tower", obj_tower_wizard);
			obj_inventory.wood -= obj_tower_wizard.build_cost_wood;
			obj_inventory.stone -= obj_tower_wizard.build_cost_stone;
		}
		else if (keyboard_check_pressed(ord("3")) && can_place && afford_catapult)
		{
			can_place = false;
			instance_create_layer(x,y - 40, "Instances_Tower", obj_tower_catapult);
			obj_inventory.wood -= obj_tower_catapult.build_cost_wood;
			obj_inventory.stone -= obj_tower_catapult.build_cost_stone;
		}
		else if (keyboard_check_pressed(ord("1")) && !can_place) 
		{
			var tower = instance_nearest(x,y,obj_tower);
			instance_destroy(tower);
			can_place = true;
		}
	}
}

