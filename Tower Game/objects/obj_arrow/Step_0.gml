/// @description Insert description here
// You can write your code in this editor
if instance_exists(target_id)
{
	direction = point_direction(x,y,target_id.x, target_id.y);
	image_angle = direction + 90;
}
else
{
	instance_destroy();
}