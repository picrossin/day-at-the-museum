/// @description Insert description here
// You can write your code in this editor

travel_step = 5;

MAX_HEALTH = 100;
current_health = MAX_HEALTH;

current_direction = Direction.East;

propeller_step = 0;

MAX_PROPELLER_SPEED = 5;
propeller_speed = 2;

north_sprite_index = 1;
south_sprite_index = 0;

has_my_boomerang = true;
has_my_sword = true;

healthbar_width = 500;
healthbar_height = 64;

//creates equipment
instance_create_depth(x, y, -100, obj_player_boomerang);
instance_create_depth(x, y, -100, obj_player_sword_static);
instance_create_depth(x, y, -100, obj_player_sword);