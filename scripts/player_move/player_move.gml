//handles left right step 

if(keyboard_check(vk_left)){
	/*
	if(player.current_direction != Direction.Left) {
		//change_direction(player, Direction.Left);
	}
	*/
	horizontal_travel_distance = obj_player.travel_step * -1;
} else if(keyboard_check(vk_right)) {
	/*
	if(player.current_direction != Direction.Right) {
		//change_direction(player, Direction.Right);
	}
	*/
	horizontal_travel_distance = obj_player.travel_step * 1;
} else {
	horizontal_travel_distance = 0;
}

move_with_collision(obj_player,"x", horizontal_travel_distance);

//handles up and down steps
//makes sure that we're not already airborne
if(keyboard_check(vk_up)) {
	vertical_travel_distance = obj_player.travel_step * -1;
} else if(keyboard_check(vk_down)) {
	vertical_travel_distance = obj_player.travel_step * 1;
} else {
	vertical_travel_distance = 0;
}
move_with_collision(obj_player, "y", vertical_travel_distance);
