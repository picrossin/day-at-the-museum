///@function change_direction(caster, candidate_direction)
///@param caster The caster of the change direction action
///@param candidate_direction The direction you want the caster to face.

caster = argument0;
candidate_direction = argument1;

enum Direction {
	North,
	South,
	West,
	East,
}

switch(candidate_direction){
	case Direction.North:
		caster.image_index = caster.north_sprite_index;
		break;
	case Direction.South:
		caster.image_index = caster.south_sprite_index;
		break;
	case Direction.West:
		caster.image_index = caster.south_sprite_index;
		caster.image_xscale = -1;
		break;
	case Direction.East:
		caster.image_index = caster.south_sprite_index;
		//this is the default xscale, and makes the sprite face it's normal direction
		caster.image_xscale = 1;
		break;
}
caster.current_direction = candidate_direction;