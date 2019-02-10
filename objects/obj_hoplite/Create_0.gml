/// @description Insert description here
// You can write your code in this editor

travel_step = 1.5;

sprite_step = 0;

zone = instance_place(x, y, obj_monster_zone);

MAX_HEALTH = 25;
current_health = MAX_HEALTH;

north_sprite_index = 1;
south_sprite_index = 0;

x_player_diff_for_change = 10;

current_direction = Direction.West;
MIN_STEP_TILL_DIRECTION_CHANGE = 0;
current_steps_since_direction_change = 0;

has_my_sword = true;
SWORD_COOLDOWN = 30;
current_sword_cooldown = 0;

hit_last_turn = false;