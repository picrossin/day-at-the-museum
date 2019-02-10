/// @description Insert description here
// You can write your code in this editor
handle_player_input();

if(has_my_boomerang) {
	obj_player_boomerang_static.image_alpha = 1.0;
	
	obj_player_boomerang_static.x = x;
	obj_player_boomerang_static.y = y;
	change_direction(obj_player_boomerang_static, obj_player.current_direction);
} else {
	obj_player_boomerang_static.image_alpha = 0.0;
}

if(has_my_sword) {
	obj_player_sword_static.x = x;
	obj_player_sword_static.y = y;
	change_direction(obj_player_sword_static, obj_player.current_direction);
}

enemy_weapons = [obj_hoplite_sword];
collided_with_weapon = false;
for(i = 0; i < array_length_1d(enemy_weapons); ++i) {
	if(place_meeting(x, y, enemy_weapons[i])) {
		collided_with_weapon = true;
		if(!hit_last_turn) {
			hit_last_turn = true;
			show_debug_message(string(id)+" was hit");
			handle_damage(id, enemy_weapons[i].damage);
		}
	}
}
if(!collided_with_weapon) {
	hit_last_turn = false;
}