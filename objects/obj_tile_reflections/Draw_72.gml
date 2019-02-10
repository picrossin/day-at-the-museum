/// @description Insert description here
// You can write your code in this editor
if (!surface_exists(tile_surf)){
    var w = camera_get_view_width(view_camera);
    var h = camera_get_view_height(view_camera);
    tile_surf = surface_create(w, h);
}
else{
    surface_set_target(tile_surf);
    draw_clear_alpha(0, 0);
    surface_reset_target();
}