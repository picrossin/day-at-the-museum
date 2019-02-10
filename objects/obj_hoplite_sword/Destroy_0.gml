/// @description Insert description here
// You can write your code in this editor
instance_destroy();

if(instance_exists(owner)) {
	owner.has_my_sword = true;
	owner.current_sword_cooldown = owner.SWORD_COOLDOWN;
}