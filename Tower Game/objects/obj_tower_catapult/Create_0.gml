/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

build_cost_wood = obj_build_cost.catapult_wood;
build_cost_stone = obj_build_cost.catapult_stone;


heal_cost_wood = floor(build_cost_wood/2);
heal_cost_stone = floor(build_cost_stone/2);

var catapult_offset = 16; // The vertical offset between the tower and the catapult
instance_create_layer(x, y - catapult_offset, "Assets", obj_catapult);