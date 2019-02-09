player_move();

if (mouse_check_button_pressed(mb_left)) {
	obj_player_sword.swing = true;
	swing_sword(obj_player_sword);
}

if (keyboard_check(vk_pagedown)) {
	game_end();
}