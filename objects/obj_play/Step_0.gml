/// @description Insert description here
// You can write your code in this editor
if (cutscene && image_alpha > 0) 
{
	image_alpha -= .005;
} else if (cutscene && image_alpha <= 0) {
	instance_destroy();
}
