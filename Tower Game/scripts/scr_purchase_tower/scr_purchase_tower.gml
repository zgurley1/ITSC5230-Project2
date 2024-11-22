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
		obj_inventory.wood -= tower.build_cost_wood/2;
		obj_inventory.stone -= tower.build_cost_stone/2;
		
	}
	
	
	
	
	
}