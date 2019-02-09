/// @description Insert description here
// You can write your code in this editor

player_move();

if(has_my_boomerang) {
	obj_player_boomerang.x = x;
	obj_player_boomerang.y = y;
	change_direction(obj_player_boomerang, obj_player.current_direction);
}