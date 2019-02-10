/// @description Insert description here
// You can write your code in this editor

range = 400;

rotation_angle = 10;

travel_step = 8;

angle = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);

damage = 5;

image_xscale = 1.5;
image_yscale = 1.5;

target_x = obj_player.x + lengthdir_x(range, angle);
target_y = obj_player.y + lengthdir_y(range, angle);	

return_to_player = false;