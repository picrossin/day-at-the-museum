/// @description Insert description here
// You can write your code in this editor
if (walk_forward) {
	vspeed = -.5;	
}
switch (character_number) {
	case 0:
		sprite_index = spr_teacher;
		break;
	case 1:
		sprite_index = spr_grant;
		break;
	case 2:
		sprite_index = spr_madi;
		break;
	case 3:
		sprite_index = spr_michael;
		break;
	case 4:
		sprite_index = spr_waves;
		break;
	case 5:
		sprite_index = spr_zach;
		break;
	case 6:
		sprite_index = spr_player_cut;
		break;
}
if (observing) {
	image_speed = 0;	
	if (sprite_index != spr_player_cut) image_alpha -= .001;
}
if (room == rm_cutscene_2 && !audio_is_playing(snd_intro)) {
	room_goto_next();
}