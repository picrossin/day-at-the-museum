/// @description Insert description here
// You can write your code in this editor

travel_step = 0.5;

sprite_step = 0;

zone = instance_place(x, y, obj_monster_zone);

MAX_HEALTH = 200;
current_health = MAX_HEALTH;

north_sprite_index = 0;
south_sprite_index = 0;

current_direction = Direction.West;

DIAMOND_COOLDOWN = 20;
current_diamond_cooldown = 4;

hit_last_turn = false;