/// @description Insert description here
// You can write your code in this editor
//Get tilemap
var tilemap = layer_tilemap_get_id("Floor_tiles");

//Set surface
surface_set_target(tile_surf);

//Draw tilemap
var cx = camera_get_view_x(view_camera);
var cy = camera_get_view_y(view_camera);
draw_tilemap(tilemap, -cx, -cy);

var i;
for (i = 0; i < instance_number(obj_reflected_object); i += 1) {
	reflections[i] = instance_find(obj_reflected_object,i);
	//Draw reflected player sprite
	//Get player y offset for reflection
	var yoff = (reflections[i].sprite_height - reflections[i].sprite_yoffset)*2;

	//Set blendmode
	gpu_set_blendmode_ext(bm_dest_colour, bm_inv_src_alpha);

	//Draw reflection
	draw_sprite_ext(reflections[i].sprite_index, reflections[i].image_index, reflections[i].x - cx, (reflections[i].y+yoff) - cy, reflections[i].image_xscale, -reflections[i].image_yscale, reflections[i].image_angle, -1, 0.7);

	gpu_set_blendmode(bm_subtract);
	
	//Draw reflection
	draw_sprite_ext(spr_fade, 0, reflections[i].x - cx, (reflections[i].y+yoff) - cy, reflections[i].image_xscale, reflections[i].image_yscale, reflections[i].image_angle, -1, 1);

}

//Reset blendmode
gpu_set_blendmode(bm_normal);

//Reset surface
surface_reset_target();

//Draw surface in game
draw_surface(tile_surf, cx, cy);