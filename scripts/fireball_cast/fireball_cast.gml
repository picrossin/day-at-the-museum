///@function fireball_cast(caster, travel_direction)
///@param caster The caster of the fireball
///@param travel_direction The direction that the fireball will travel.

caster = argument0;
travel_direction = argument1;

x_offset = caster.sprite_width * (travel_direction==Direction.West?-1:(travel_direction==Direction.East?1:0));
y_offset = caster.sprite_height * (travel_direction==Direction.North?-1:(travel_direction==Direction.South?1:0));

new_fireball = instance_create_depth(caster.x + caster.sprite_width/2 + x_offset, caster.y + caster.sprite_height/2 + y_offset, 50, obj_fireball);

new_fireball.travel_direction = travel_direction;