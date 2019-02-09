/// @description Insert description here
// You can write your code in this editor

x1 = 0;
y1 = camera_get_view_height(0) - healthbar_height;
x2 = healthbar_width;
y2 = camera_get_view_height(0);

draw_healthbar(x1, y1, x2, y2, current_health, c_black, c_red, c_green, 0, true, true);