/// @description Insert description here
// You can write your code in this editor

if (instance_exists(owner)) {
	if (x <= obj_player.x) {
		image_xscale = 1;
		base_depth = -2;
	} else {
		image_xscale = -1;
		base_depth = 0;
	} 
} else {
	instance_destroy();
}

if (image_speed > 0) {
	if(instance_exists(owner)) {
		x = owner.x + x_offset;
		y = owner.y;
		depth += base_depth;
	}
    if (image_index > (image_number - 1)) { 
        image_index = 0;
        image_speed = 0;
    }
} else {
	if(instance_exists(owner)) {
		instance_destroy();
	}
}