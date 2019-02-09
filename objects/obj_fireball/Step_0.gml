/// @description Insert description here
// You can write your code in this editor
move_with_collision(id, travel_direction, (travel_direction==Direction.West||travel_direction==Direction.North?-1:1)*travel_step);

if(old_x == x && old_y == y) {
	instance_destroy();
} else {
	old_x = x;
	old_y = y;
}
//move_with_collision(id, (travel_direction==Direction.North||travel_direction==Direction.South?"y":"x"), (travel_direction==Direction.West||travel_direction==Direction.North?-1:1)*travel_step);