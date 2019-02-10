/// @description Insert description here
// You can write your code in this editor

if (zone.active) {
	melee_enemy_pathfinding(id, obj_player, zone);
	
	if(current_diamond_cooldown <= 0) {
		
		top_left_fire = instance_create_layer(x, y, "Projectiles", obj_tiki_fireball);
		top_left_fire.travel_direction = [Direction.North, Direction.West];
		
		top_right_fire = instance_create_layer(x + sprite_width, y, "Projectiles", obj_tiki_fireball);
		top_right_fire.travel_direction = [Direction.North, Direction.East];
		
		bottom_left_fire = instance_create_layer(x, y + sprite_height/2 + sprite_get_height(spr_fireball), "Projectiles", obj_tiki_fireball);
		bottom_left_fire.travel_direction = [Direction.South, Direction.West];
		
		bottom_right_fire = instance_create_layer(x + sprite_width, y + sprite_height/2 + sprite_get_height(spr_fireball), "Projectiles", obj_tiki_fireball);
		bottom_right_fire.travel_direction = [Direction.South, Direction.East];
		
		current_diamond_cooldown = DIAMOND_COOLDOWN;
	} else {
		-- current_diamond_cooldown;
	}
}