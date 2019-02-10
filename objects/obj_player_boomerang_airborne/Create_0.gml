/// @description Insert description here
// You can write your code in this editor

max_range = 200;

travel_range = min(distance_to_point(mouse_x, mouse_y),max_range);

rotation_angle = 10;

travel_step = 8;

angle = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);

damage = 5;

image_xscale = 1.5;
image_yscale = 1.5;

target_x = obj_player.x + lengthdir_x(travel_range, angle);
target_y = obj_player.y + lengthdir_y(travel_range, angle);	

return_to_player = false;