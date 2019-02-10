///@function melee_enemy_pathfinding(caster, target, zone)
///@param caster The object that is moving.
///@param target The target that the caster should be moving towards.
///@param zone The zone in which the monster can move.

caster = argument0;
target = argument1;
zone = argument2;

x_diff = target.x - caster.x;
x_attempt_step = caster.travel_step * (x_diff/abs(x_diff));

if(x_diff != 0) {
	move_in_box(caster, (x_diff > 0?Direction.East:Direction.West), x_attempt_step, zone);
}

y_diff = target.y - caster.y;
y_attempt_step = caster.travel_step * (y_diff/abs(y_diff));

if(y_diff != 0) {
	move_in_box(caster, (y_diff > 0?Direction.South:Direction.North), y_attempt_step, zone);
}