/// @description Insert description here
// You can write your code in this editor

x1 = 0;
y1 = camera_get_view_height(0) - healthbar_height;
x2 = healthbar_width;
y2 = camera_get_view_height(0);

draw_healthbar(x1 + healthbar_side_offset, y1 - healthbar_side_offset, x2 + healthbar_side_offset, y2 - healthbar_side_offset, current_health, c_black, c_green, c_green, 0, true, true);