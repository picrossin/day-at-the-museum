/// @description Insert description here
// You can write your code in this editor

if (zone.active) {
	melee_boss_pathfinding(id, obj_player, zone);
	if(place_meeting(x, y, obj_player)) {
		bounce_direction = obj_player.current_direction;
		switch (bounce_direction) {
			case Direction.North:
				bounce_direction = Direction.South;
				break;
			case Direction.South:
				bounce_direction = Direction.North;
				break;
			case Direction.East:
				bounce_direction = Direction.West;
				break;
			case Direction.West:
				bounce_direction = Direction.East;
				break;
		}
		move_with_collision(obj_player, bounce_direction, 5);
		if(current_bounce_cooldown <= 0) {		
			handle_damage(obj_player, damage);
			current_bounce_cooldown = BOUNCE_COOLDOWN;
		} else {
			--current_bounce_cooldown;	
		}
	}
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
	if(current_circle_cooldown <= 0) {
		
		full_circle_radians = 2* pi;
		
		balls = 8;
		
		for(n = 0; n < balls; ++n) {
			current_fireball = instance_create_layer(x + sprite_width/2, y + sprite_height/2, "Projectiles", obj_tiki_fireball);
			
			angle = full_circle_radians*(n / balls);
			//x2 = x + sin(angle)*sprite_width;
			//y2 = y - sprite_width*(1 - cos(angle));
			
			current_fireball.hspeed = fireball_step*cos(angle) * (angle<=90 || angle>=270?1:-1);
			current_fireball.vspeed = fireball_step*sin(angle) * (angle>=90 || angle<=270?-1:1);
		}
		
		current_circle_cooldown = CIRCLE_COOLDOWN;
	} else {
		--current_circle_cooldown;
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