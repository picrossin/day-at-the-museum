/// @description Insert description here
// You can write your code in this editor

if (zone.active) {
	melee_boss_pathfinding(id, obj_player, zone);
	
	if(current_diamond_cooldown <= 0) {
		
		top_left_fire = instance_create_layer(x, y, "Projectiles", obj_tiki_fireball);
		top_left_fire.hspeed = -fireball_step;
		top_left_fire.vspeed = -fireball_step;
		
		top_right_fire = instance_create_layer(x + sprite_width, y, "Projectiles", obj_tiki_fireball);
		top_right_fire.hspeed = fireball_step;
		top_right_fire.vspeed = -fireball_step;
		
		bottom_left_fire = instance_create_layer(x, y + sprite_height/2 + sprite_get_height(spr_fireball), "Projectiles", obj_tiki_fireball);
		bottom_left_fire.hspeed = -fireball_step;
		bottom_left_fire.vspeed = fireball_step;
		
		bottom_right_fire = instance_create_layer(x + sprite_width, y + sprite_height/2 + sprite_get_height(spr_fireball), "Projectiles", obj_tiki_fireball);
		bottom_right_fire.hspeed = fireball_step;
		bottom_right_fire.vspeed = fireball_step;
		
		current_diamond_cooldown = DIAMOND_COOLDOWN;
	} else {
		-- current_diamond_cooldown;
	}
}

enemy_weapons = [obj_player_sword, obj_player_boomerang_airborne];
collided_with_weapon = false;
for(i = 0; i < array_length_1d(enemy_weapons); ++i) {
	if(place_meeting(x, y, enemy_weapons[i])) {
		collided_with_weapon = true;
		if(!hit_last_turn) {
			hit_last_turn = true;
			show_debug_message("I was hit");
			handle_damage(id, enemy_weapons[i].damage);
		}
	}
}

if(!collided_with_weapon) {
	hit_last_turn = false;
}