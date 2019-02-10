///@function move_in_box(caster, travel_direction, travel_distance, box)
///@param caster Object that is being manipulated
///@param travel_direction The direction to travel in.
///@param travel_distance Distance to travel
///@param box Box enemies are able to move in 

caster = argument0;

travel_direction = argument1;

travel_distance = abs(argument2);
travel_distance *= (travel_direction==Direction.North||travel_direction==Direction.West?-1:1);

travel_axis_x = travel_direction == Direction.West || travel_direction == Direction.East;

box = argument3;
box_x = box.x - box.sprite_xoffset;
box_y = box.y - box.sprite_yoffset;

new_x = clamp(caster.x + (travel_axis_x?travel_distance:0) - caster.sprite_xoffset, box_x, box_x + box.sprite_width - caster.sprite_width);
new_y = clamp(caster.y + (!travel_axis_x?travel_distance:0) - caster.sprite_yoffset, box_y, box_y + box.sprite_height - caster.sprite_height);

caster.x = new_x;
caster.y = new_y;