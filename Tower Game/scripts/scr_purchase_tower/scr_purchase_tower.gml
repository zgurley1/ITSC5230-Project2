// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function buy(tower){
	if (tower == "archer")
	{
		
		obj_inventory.wood -= obj_tower_archer.build_cost_wood;
		obj_inventory.stone -= obj_tower_archer.build_cost_stone;
	}
	else if (tower == "wizard")
	{
		
		obj_inventory.wood -= obj_tower_wizard.build_cost_wood;
		obj_inventory.stone -= obj_tower_wizard.build_cost_stone;
	}
	else if (tower == "catapult")
	{
		obj_inventory.wood -= obj_tower_catapult.build_cost_wood;
		obj_inventory.stone -= obj_tower_catapult.build_cost_stone;
	}


}

function heal(tower) {
	
	if (instance_exists(tower))
	{
		show_debug_message("in heal function");
		var cost = string(tower.heal_cost_wood);
		show_debug_message("Cost: " + cost);
		obj_inventory.wood -= tower.heal_cost_wood;
		obj_inventory.stone -= tower.heal_cost_stone;
		
	}
}

function canHeal(tower) {
	
	if (instance_exists(tower) && 
	    ((obj_inventory.wood >= tower.heal_cost_wood) && (obj_inventory.stone >= tower.heal_cost_stone))
		&& (tower.tower_health < tower.max_health))
	{
		return true;
	} else {
		return false;
	}
}

function canUpgrade(tower) {
	
	if (instance_exists(tower) && 
	    ((obj_inventory.wood >= tower.upgrade_cost_wood) && (obj_inventory.stone >= tower.upgrade_cost_stone)) && 
		(tower.upgrade_num < 3))
	{
		return true;
	} else {
		return false;
	}
}


function upgradeTower(tower) {
	if (instance_exists(tower))
	{
		obj_inventory.wood -= tower.upgrade_cost_wood;
		obj_inventory.stone -= tower.upgrade_cost_stone;
		
		tower.max_health += 10;
		tower.fire_rate -= 5;
		
		//tower.ammo_type.damage += 10;
	}
}