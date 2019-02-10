/// @description Insert description here
// You can write your code in this editor
bounce_direction = obj_player.current_direction;
switch (bounce_direction) {
	case Direction.North:
		bounce_direction = Direction.South;
		break;
	case Direction.South:
		bounce_direction = Direction.North;
		break;
	case Direction.East:
		bounce_direction = Direction.West;
		break;
	case Direction.West:
		bounce_direction = Direction.East;
		break;
}
move_with_collision(obj_player, bounce_direction, 5);

handle_damage(obj_player, damage);