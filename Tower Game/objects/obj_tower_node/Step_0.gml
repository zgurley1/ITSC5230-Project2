/// @description Insert description here
// You can write your code in this editor


if (instance_exists(obj_player)) {
	
	
	
	switch (state) {
		case TOWER_NODE_STATE.Empty:
			if distance_to_object(obj_player) <= obj_player.attack_range {
				if ((obj_inventory.wood >= obj_build_cost.archer_wood) && (obj_inventory.stone >= obj_build_cost.archer_stone))
				{
					afford_archer = true;
				} else {
					afford_archer = false;
				}
		
				if ((obj_inventory.wood >= obj_build_cost.wizard_wood) && (obj_inventory.stone >= obj_build_cost.wizard_stone))
				{
					afford_wizard = true;
				} else {
					afford_wizard = false;
				}
		
				if ((obj_inventory.wood >= obj_build_cost.catapult_wood) && (obj_inventory.stone >= obj_build_cost.catapult_stone))
				{
					afford_catapult = true;
				} else {
					afford_catapult = false;
				}
		
	
				if (keyboard_check_pressed(ord("1")) && afford_archer)
				{
					tower = instance_create_layer(x,y - 40, "Instances_Tower", obj_tower_archer);
					buy("archer");
					state = TOWER_NODE_STATE.Placed;
				}
				else if (keyboard_check_pressed(ord("2")) && afford_wizard)
				{
					tower = instance_create_layer(x,y - 40, "Instances_Tower", obj_tower_wizard);
					buy("wizard");
					state = TOWER_NODE_STATE.Placed;
				}
				else if (keyboard_check_pressed(ord("3")) && afford_catapult)
				{
					tower = instance_create_layer(x,y - 40, "Instances_Tower", obj_tower_catapult);
					buy("catapult");
					state = TOWER_NODE_STATE.Placed;
				}
			}
		
			break;
		
		case TOWER_NODE_STATE.Placed:
			if (!instance_exists(tower)) {
				state = TOWER_NODE_STATE.Empty;
				break;
			}
			
			
			if distance_to_object(obj_player) <= obj_player.attack_range {
				if (keyboard_check_pressed(ord("1"))) 
				{
					instance_destroy(tower);
					state = TOWER_NODE_STATE.Empty;
				}
				else if (keyboard_check_pressed(ord("2")) && canHeal(tower))
				{
					tower.tower_health = tower.max_health;
					heal(tower);
					show_debug_message("In tower finite state");
					
				}
			}
		
			break;	
	}
}
	

