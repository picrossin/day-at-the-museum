//handles left right step 

if(keyboard_check(vk_left)){
	if(obj_player.current_direction != Direction.West) {
		change_direction(obj_player, Direction.West);
	}
	horizontal_travel_distance = obj_player.travel_step * -1;
} else if(keyboard_check(vk_right)) {
	if(obj_player.current_direction != Direction.East) {
		change_direction(obj_player, Direction.East);
	}
	horizontal_travel_distance = obj_player.travel_step * 1;
} else {
	horizontal_travel_distance = 0;
}

move_with_collision(obj_player,"x", horizontal_travel_distance);

//handles up and down steps
//makes sure that we're not already airborne
if(keyboard_check(vk_up)) {
	if(obj_player.current_direction != Direction.North) {
		change_direction(obj_player, Direction.North);
	}
	vertical_travel_distance = obj_player.travel_step * -1;
} else if(keyboard_check(vk_down)) {
	if(obj_player.current_direction != Direction.South) {
		change_direction(obj_player, Direction.South);
	}
	vertical_travel_distance = obj_player.travel_step * 1;
} else {
	vertical_travel_distance = 0;
}
move_with_collision(obj_player, "y", vertical_travel_distance);