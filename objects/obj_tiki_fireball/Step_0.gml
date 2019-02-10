/// @description Insert description here
// You can write your code in this editor

move_towards_point(x + travel_step*(travel_direction[1]==Direction.West?-1:1), y + travel_step*(travel_direction[0]==Direction.North?-1:1), id);

//This code handles if the player has not moved since their last step, and assumes that we should destroy the fireball.
if(old_x == x && old_y == y) {
	if(current_stationary_step == STATIONARY_STEP_LIMIT) {
		//instance_destroy();
	} else {
		++ current_stationary_step;
	}
} else {
	old_x = x;
	old_y = y;
	
	current_stationary_step = 0;
}