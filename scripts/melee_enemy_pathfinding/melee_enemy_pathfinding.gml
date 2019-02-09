///@function melee_enemy_pathfinding(caster, target)
///@param caster The object that is moving.
///@param target The target that the caster should be moving towards.

//The caster should prioritize moving towards the target in the vertical, and then the horizontal.

caster = argument0;
target = argument1;


x_diff = target.x - caster.x;
x_attempt_step = caster.travel_step * (x_diff/abs(x_diff));

if(x_diff != 0) {
	move_with_collision(caster, (x_diff > 0?Direction.East:Direction.West), x_attempt_step);
}

y_diff = target.y - caster.y;
y_attempt_step = caster.travel_step * (y_diff/abs(y_diff));

if(y_diff != 0) {
	move_with_collision(caster, (y_diff > 0?Direction.South:Direction.North), y_attempt_step);
}