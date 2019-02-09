/// @description Insert description here
// You can write your code in this editor

draw_self();
draw_sprite(spr_legs,0,x,y);
//We use max_prop speed - prop speed to control how many frames we require for a single animation frame change.
propeller_step %= 6*(MAX_PROPELLER_SPEED-propeller_speed);
draw_sprite(spr_propeller,propeller_step/ (MAX_PROPELLER_SPEED-propeller_speed),x,y);
propeller_step++;