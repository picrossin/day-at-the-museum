/// @description Insert description here
// You can write your code in this editor

start_pos = [640, 1600];

checkpoint_pos = [1088, 384 + 64 * 2];

custom_pos = [840, 490];

dev_mode = false;

player_respawn_x = start_pos[0];
player_respawn_y = start_pos[1];

if(dev_mode) {
	player_respawn_x = custom_pos[0];
	player_respawn_y = custom_pos[1];
}