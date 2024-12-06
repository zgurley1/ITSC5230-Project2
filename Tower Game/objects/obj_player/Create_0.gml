/// @description Insert description here
// You can write your code in this editor

xspd = 0;
yspd = 0;

health = player_health;
state = PLAYER_STATE.Walking;

xdir = 1;
ydir = 1;

target_tree = noone;
target_stone = noone;
tree_in_range = instance_nearest(x,y, obj_tree);
stone_in_range = instance_nearest(x,y, obj_stone);

last_direction = "right"

damaged_now = false
_uniColor = shader_get_uniform(sdr_color_overlay, "u_colour");
_color    = [1.0, 1.0, 0.0, 1.0];