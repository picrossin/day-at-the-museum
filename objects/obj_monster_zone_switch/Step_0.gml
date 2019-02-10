/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y, obj_player)) {
	if (!collided_last_step){
		for(i = 0; i < array_length_1d(zones); ++i) {
			zones[i].active = !zones[i].active;
			show_debug_message("Toggled zone "+string(zones[i]));
		}
		entered_direction = obj_player.current_direction;
		collided_last_step = true;
	} 
} else {
	if(collided_last_step) {
		if(entered_direction != obj_player.current_direction) {
			for(i = 0; i < array_length_1d(zones); ++i) {
				zones[i].active = !zones[i].active;
				show_debug_message("Toggled zone "+string(zones[i]));
			}
		}
	}
	collided_last_step = false;
}