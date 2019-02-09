///@function swing_sword(caster)
///@param caster The caster of the change direction action

caster = argument0;

caster.image_angle = point_direction(caster.x, caster.y, mouse_x, mouse_y);

caster.image_alpha = 1;
caster.image_speed = 1;