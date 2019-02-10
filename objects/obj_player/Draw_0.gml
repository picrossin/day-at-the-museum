/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_sprite(spr_legs, (is_moving ? 1: 0), x, y);

draw_sprite(spr_propeller, propeller_step / (MAX_PROPELLER_SPEED-propeller_speed), x, y);
++propeller_step;
propeller_step %= 6*(MAX_PROPELLER_SPEED-propeller_speed);
