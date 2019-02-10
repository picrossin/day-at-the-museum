/// @description Insert description here
// You can write your code in this editor

if(!save_point_met) {
	left_side_x = x - sprite_xoffset;
	right_side_x = left_side_x + sprite_width;

	top_side_y = y - sprite_yoffset;
	bottom_side_y = top_side_y + sprite_height;

	in_x_bounds = clamp(obj_player.x,left_side_x, right_side_x) == obj_player.x;
	in_y_bounds = clamp(obj_player.y,top_side_y, bottom_side_y) == obj_player.y;

	if (in_x_bounds && in_y_bounds) {
		obj_controller.player_respawn_x = obj_controller.checkpoint_pos[0];
		obj_controller.player_respawn_y = obj_controller.checkpoint_pos[1];
		save_point_met = true;
	}
}