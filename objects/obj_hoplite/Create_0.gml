/// @description Insert description here
// You can write your code in this editor

travel_step = 2.7;

sprite_step = 0;

zone = instance_place(x, y, obj_monster_zone);

MAX_HEALTH = 25;
current_health = MAX_HEALTH;

has_my_sword = true;
SWORD_COOLDOWN = 20;
current_sword_cooldown = 0;

hit_last_turn = false;