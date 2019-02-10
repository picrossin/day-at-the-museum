/// @description Insert description here
// You can write your code in this editor

if (zone.active) {
	
	melee_enemy_pathfinding(id, obj_player, zone);
	
	if(has_my_sword) {
		if(current_sword_cooldown <= 0) {
			if(collision_circle(x, y, 50, obj_player, true, true)) {
				hoplite_sword = instance_create_depth(x, y + sprite_get_height(spr_hoplite)/2 * 3, depth + 1, obj_hoplite_sword);
				hoplite_sword.owner = id;
				has_my_sword = false;
			}
			show_debug_message("spawned sword");
		} else {
			--current_sword_cooldown;
		}
	}
	
	//Animation
	if (instance_exists(obj_player)) {
		if(abs(x - obj_player.x) >= x_player_diff_for_change) {
			new_face_direction = (x >= obj_player.x ? Direction.West: Direction.East);
	
			if(new_face_direction != current_direction && current_steps_since_direction_change >= MIN_STEP_TILL_DIRECTION_CHANGE) {
				if (new_face_direction = Direction.West) {
					sprite_step = 2;
				} else {
					sprite_step = 3;
				}
				if(has_my_sword) {
					sprite_step -= 2;
				}
				current_direction = new_face_direction;
				current_steps_since_direction_change = 0;
			} else {
				++ current_steps_since_direction_change;
			}
		}
	}
}

/*
	Handles collisions with enemy weapons
*/
enemy_weapons = [obj_player_sword, obj_player_boomerang_airborne];
collided_with_weapon = false;
for(i = 0; i < array_length_1d(enemy_weapons); ++i) {
	if(place_meeting(x, y, enemy_weapons[i])) {
		collided_with_weapon = true;
		if(!hit_last_turn) {
			show_debug_message("I was hit");
			handle_damage(id, enemy_weapons[i].damage);
			hit_last_turn = true;
		}
	}
}

if(!collided_with_weapon) {
	hit_last_turn = false;
}