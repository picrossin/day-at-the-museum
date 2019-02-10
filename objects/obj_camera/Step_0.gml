/// @description Insert description here
// You can write your code in this editor
// update destination
if (instance_exists(follow)) {
	xDestination = follow.x;
	yDestination = follow.y;
}

// move towards destination
x += (xDestination - x) / cam_speed;
y += (yDestination - y) / cam_speed;

// update view position
camera_set_view_pos(cam, x - half_cam_width, y - half_cam_height);

// clamp camera to room
if (lockToRoom) {
	x = clamp(x, half_cam_width, room_width - half_cam_width);	
	y = clamp(y, half_cam_height, room_height - half_cam_height);
}