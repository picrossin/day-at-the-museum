//Handles player equipment actions
if (mouse_check_button_pressed(mb_left)) {
	obj_player_sword.swing = true;
	swing_sword(obj_player_sword);
}

if (mouse_check_button(mb_right)) {
	throw_boomerang(id, mouse_x, mouse_y);
}

//Handles game control actions
end_key = [vk_pagedown];
for(i = 0; i < array_length_1d(end_key); ++i) {
	if (keyboard_check(end_key[i])) {
		game_end();
	}
}

restart_key = [vk_subtract, ord("R")];
for(i = 0; i < array_length_1d(restart_key); ++i) {
	if (keyboard_check(restart_key[i])) {
		room_restart();
	}
}

//handles movement commands

//left_key = [vk_left, ord("A")];
left_key = [ord("A")];
for(i = 0; i < array_length_1d(left_key); ++i) {
	if(keyboard_check(left_key[i])){
		if(obj_player.current_direction != Direction.West) {
			change_direction(obj_player, Direction.West);
		}
		horizontal_travel_distance = obj_player.travel_step;
		move_with_collision(obj_player, obj_player.current_direction, horizontal_travel_distance);
	} 
}

//right_key = [vk_right, ord("D")];
right_key = [ord("D")];
for(i = 0; i < array_length_1d(right_key); ++i) {
	if(keyboard_check(right_key[i])) {
		if(obj_player.current_direction != Direction.East) {
			change_direction(obj_player, Direction.East);
		}
		horizontal_travel_distance = obj_player.travel_step
		move_with_collision(obj_player, obj_player.current_direction, horizontal_travel_distance);
	}
}

//handles up and down steps
//makes sure that we're not already airborne

//up_key = [vk_up, ord("W")];
up_key = [ord("W")];
for(i = 0; i < array_length_1d(up_key); ++i) {
	if(keyboard_check(up_key[i])) {
		if(obj_player.current_direction != Direction.North) {
			change_direction(obj_player, Direction.North);
		}
		vertical_travel_distance = obj_player.travel_step;
		move_with_collision(obj_player, obj_player.current_direction, vertical_travel_distance);
	}	
}

//down_key = [vk_down, ord("S")];
down_key = [ord("S")];
for(i = 0; i < array_length_1d(down_key); ++i) {
	if(keyboard_check(down_key[i])) {
		if(obj_player.current_direction != Direction.South) {
			change_direction(obj_player, Direction.South);
		}
		vertical_travel_distance = obj_player.travel_step;
		move_with_collision(obj_player, obj_player.current_direction, vertical_travel_distance);
	}
}