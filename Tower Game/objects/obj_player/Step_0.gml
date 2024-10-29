
if health <=0
{
	instance_destroy();
	return;
}

var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));
var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));

xspd = (right-left) * movement_speed;
yspd = (down - up) * movement_speed;

if !player_collision_x(xspd)
{
	x += xspd;
}
if !player_collision_y(yspd)
{
	y += yspd;
}


