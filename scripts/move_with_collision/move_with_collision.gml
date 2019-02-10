///@function move_with_collision(caster, cord_direction, travel_distance)
///@param caster Object that is being manipulated
///@param cord_direction Cordinate system to traverse
///@param travel_distance Distance to travel

caster = argument0;

travel_direction = argument1;
if(travel_direction == Direction.North || travel_direction == Direction.South) {
	cord_direction = "y";
} else {
	cord_direction = "x";
}


travel_distance = abs(argument2) * (travel_direction==Direction.North||travel_direction==Direction.West?-1:1);


if(cord_direction == "x") {
	caster_pos = caster.x;
	caster_size = caster.sprite_width;
}else {
	caster_pos = caster.y;
	caster_size = caster.sprite_height;
}
candidate = caster_pos + travel_distance;

collision_objects = [obj_wall_collide];//, obj_door];

for(i = 0; i < array_length_1d(collision_objects); ++i) {
	if(place_meeting(cord_direction=="x"?candidate:caster.x, cord_direction=="y"?candidate:caster.y, collision_objects[i])) {
		conflicting_wall = instance_position(caster.x + (cord_direction=="x"?travel_distance:0), caster.y + (cord_direction=="y"?travel_distance:0), collision_objects[i]);

		if(instance_exists(conflicting_wall)) {
		
			if(cord_direction == "x") {
				wall_pos = conflicting_wall.x - conflicting_wall.sprite_xoffset;
				wall_dimension_size = conflicting_wall.sprite_width;
			} else {
				wall_pos = conflicting_wall.y - conflicting_wall.sprite_yoffset;
				wall_dimension_size = conflicting_wall.sprite_height;
			}
	
			wall_outer = wall_pos + wall_dimension_size;
			distance_to_outer_wall = (caster_pos - caster_size/2) - wall_outer;

			wall_inner = wall_pos;
			distance_to_inner_wall = wall_inner - (caster_pos - caster_size/2);
		
			if(distance_to_outer_wall < distance_to_inner_wall) {
				if(cord_direction == "x") {
					caster.x = wall_outer + caster_size/2;
				} else {
					caster.y = wall_outer + caster_size/2;
				}
			}else{
				if(cord_direction == "x") {
					caster.x = wall_inner - caster_size/2;
				} else {
					caster.y = wall_inner - caster_size/2;
				}
			}
		}
		return;
	}
}

if(cord_direction == "x") {
	caster.x += travel_distance;
} else {
	caster.y += travel_distance;
}