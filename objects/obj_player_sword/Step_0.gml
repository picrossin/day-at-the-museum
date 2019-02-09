/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_player)) {
    x = obj_player.x;
    y = obj_player.y - 11;
}


if (image_speed > 0) {
    if (image_index > (image_number - 1)) { 
        image_alpha = 0;
        image_index = 0;
        image_speed = 0;
		
		swing = false;
    }
} else {
	if(instance_exists(obj_player)) {
		obj_player.has_my_sword = true;
	}
}