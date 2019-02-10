///@function melee_enemy_pathfinding(caster, target, zone)
///@param caster The object that is moving.
///@param target The target that the caster should be moving towards.
///@param zone The zone in which the monster can move.

caster = argument0;
target = argument1;
zone = argument2;


y_diff = target.y - caster.y;
y_attempt_step = caster.travel_step * (y_diff/abs(y_diff));

if(y_diff != 0) {
	move_in_box(caster, (y_diff > 0?Direction.South: Direction.North), y_attempt_step, zone);
}

x_diff = target.x - caster.x;
x_attempt_step = caster.travel_step * (x_diff/abs(x_diff));

caster.travel_direction = (x_diff > 0?Direction.East: Direction.West);
if(x_diff != 0) {
	move_in_box(caster, caster.travel_direction, x_attempt_step, zone);
	switch(caster.travel_direction) {
		case Direction.East:
			caster.sprite_index = 3;
			break;
		case Direction.West:
			caster.sprite_index = 2;
			break;
	}
}