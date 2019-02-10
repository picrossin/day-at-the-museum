//Handles player equipment actions
if (mouse_check_button_pressed(mb_left)) {
	if(obj_player.has_my_sword) {
		sword_attack = instance_create_depth(obj_player.x, obj_player.y, -100, obj_player_sword);
	}
}

if (mouse_check_button(mb_right)) {
	if(obj_player.has_my_boomerang) {
		obj_player.has_my_boomerang = false;
		airborne_boomerang = instance_create_depth(obj_player.x, obj_player.y, obj_player.depth + 1, obj_player_boomerang_airborne);
	}
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

obj_player.is_moving = false;

left_key = [ord("A")];
for(i = 0; i < array_length_1d(left_key); ++i) {
	if(keyboard_check(left_key[i])){
		if(obj_player.current_direction != Direction.West) {
			change_direction(obj_player, Direction.West);
		}
		horizontal_travel_distance = obj_player.travel_step;
		obj_player.is_moving = true;
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
		obj_player.is_moving = true;
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