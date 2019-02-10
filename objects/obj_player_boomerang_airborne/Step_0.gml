/// @description Insert description here
// You can write your code in this editor

image_angle += rotation_angle;

if (!return_to_player && travel_step > 1) {
    
	move_towards_point(target_x, target_y, travel_step);
	
    show_debug_message("leaving player");
	if(distance_to_point(target_x, target_y) == 0) {
		return_to_player = true;
	}
    //travel_step -= 2/travel_step;
} else {
    return_to_player = true;
    if (instance_exists(obj_player)) {
        if (point_distance(x, y, obj_player.x, obj_player.y) > 8) {
            show_debug_message("approaching player");
			move_towards_point(obj_player.x, obj_player.y, travel_step);
            //travel_step += 2/travel_step;
        } else {
            obj_player.has_my_boomerang = true;    
            instance_destroy();
        }
    }
}