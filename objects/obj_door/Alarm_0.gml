/// @description Insert description here
// You can write your code in this editor
if(zone_trigger.active) {
	has_been_placed = true;
	x = return_x;
	y = return_y;
	
	if(place_meeting(x, y, obj_player)) {
		obj_player.x = (x - sprite_xoffset) + (obj_player.sprite_width - obj_player.sprite_xoffset);
	}
} else {
	has_started_alarm = false;
}