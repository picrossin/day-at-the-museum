/// @description Insert description here
// You can write your code in this editor
handle_player_input();

if(has_my_boomerang) {
	obj_player_boomerang.x = x;
	obj_player_boomerang.y = y;
	change_direction(obj_player_boomerang, obj_player.current_direction);
}

if(has_my_sword) {
	obj_player_sword_static.x = x;
	obj_player_sword_static.y = y;
	change_direction(obj_player_sword_static, obj_player.current_direction);
}

