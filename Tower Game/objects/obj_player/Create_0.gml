/// @description Insert description here
// You can write your code in this editor

xspd = 0;
yspd = 0;

health = player_health;
state = PLAYER_STATE.Walking;

dir = 1;

target_tree = noone;
target_stone = noone;
tree_in_range = instance_nearest(x,y, obj_tree);