/// @description Insert description here
// You can write your code in this editor
if (tower_health <= 0)
{
	room_goto(4);
}

if (instance_exists(obj_player))
{
	if distance_to_object(obj_player) <= obj_player.attack_range {
		if (keyboard_check_pressed(ord("1")) && canUpgrade(self)) 
		{
			obj_inventory.wood -= upgrade_cost_wood;
			obj_inventory.stone -= upgrade_cost_stone;
		
			max_health += 10;
			tower_health  = max_health;
			upgrade_num++;
		
		
			if (upgrade_num == 1)
			{
				for (var i = 0; i < 3; i++)
				{
					var boundary = instance_nearest(x,y,obj_boundary_zone);
					instance_destroy(boundary);
				}
			} else {
				var boundary = instance_nearest(x,y,obj_boundary_zone);
				instance_destroy(boundary);
			}
		}
		else if (keyboard_check_pressed(ord("2")) && canHeal(self))
		{
			tower_health = max_health;
			heal(self);			
		} 
	}
}