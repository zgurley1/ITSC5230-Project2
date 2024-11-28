/// @description Insert description here
// You can write your code in this editor

x = mouse_x;
y = mouse_y;

// Check if the position is valid
if (obj_inventory.wood < obj_build_cost.archer_wood && obj_inventory.stone) {
    can_place = false;
} else {
    can_place = true;
}
