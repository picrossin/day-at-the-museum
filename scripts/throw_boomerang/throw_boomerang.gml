///@function throw_boomerang(caster, target_x, target_y)
///@param caster The caster of the boomerang throw.
///@param target_x The x coordinate to throw the boomerang at.
///@param target_y The y coordinate to throw the boomerang at.
caster = argument0;
target_x = argument1;
target_y = argument2;

if(caster.has_my_boomerang) {
	caster.has_my_boomerang = false;
	airborne_boomerang = instance_create_depth(caster.x, caster.y, caster.depth + 1, obj_player_boomerang_airborne);
	angle = point_direction(caster.x, caster.y, target_x, target_y);
	
	airborne_boomerang.target_x = caster.x + lengthdir_x(airborne_boomerang.range, angle);
	airborne_boomerang.target_y = caster.y + lengthdir_y(airborne_boomerang.range, angle);
}