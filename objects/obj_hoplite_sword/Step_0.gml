/// @description Insert description here
// You can write your code in this editor

if (instance_exists(owner)) {
    x = owner.x;
    y = owner.y - 11;
} else {
	instance_destroy();
}


if (image_speed > 0) {
    if (image_index > (image_number - 1)) { 
        image_alpha = 0;
        image_index = 0;
        image_speed = 0;
    }
} else {
	if(instance_exists(owner)) {
		owner.has_my_sword = true;
		owner.current_sword_cooldown = owner.SWORD_COOLDOWN;
		instance_destroy();
	}
}