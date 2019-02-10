/// @description Insert description here
// You can write your code in this editor

if(zone_trigger.active) {
	if(!has_been_placed) {
		if(!has_started_alarm) {
			alarm[0] = place_time;
			has_started_alarm = true;
		}
	}
}