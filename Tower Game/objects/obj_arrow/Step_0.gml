/// @description Insert description here
// You can write your code in this editor

/*
if instance_exists(target_id)
{
	direction = point_direction(x,y,target_id.x, target_id.y);
	image_angle = direction + 90;
}
else
{
	instance_destroy();
}
*/

if instance_exists(target_id) 
{
    // Calculate the distance to the target
    var dist_to_target = point_distance(x, y, target_id.x, target_id.y);
    
    // Calculate the time it will take for the projectile to reach the target
    var travel_time = dist_to_target / projectile_speed;
    
    // Predict the target's future position based on its current speed and direction
    var future_x = target_id.x + lengthdir_x(target_id.speed * travel_time, target_id.direction);
    var future_y = target_id.y + lengthdir_y(target_id.speed * travel_time, target_id.direction);
    
    // Set the projectile direction toward the predicted future position
    direction = point_direction(x, y, future_x, future_y);
    image_angle = direction + 90;
}
else
{
    instance_destroy();
}