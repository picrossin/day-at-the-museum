/// @description Insert description here
// You can write your code in this editor

travel_step = 3.5;

MAX_HEALTH = 100;
current_health = MAX_HEALTH;

current_direction = Direction.East;

propeller_step = 0;
MAX_PROPELLER_SPEED = 5;
propeller_speed = 2;

north_sprite_index = 1;
south_sprite_index = 0;

is_moving = false;

has_my_boomerang = true;
has_my_sword = true;

hit_last_turn = false;

healthbar_width = 500;
healthbar_height = 64;

window_set_cursor(cr_none);

//creates equipment
instance_create_depth(x, y, -100, obj_player_boomerang_static);
instance_create_depth(x, y, -100, obj_player_sword_static);
instance_create_depth(x, y, -100, obj_player_sword);
instance_create_depth(x, y, depth - 3, obj_crosshair);