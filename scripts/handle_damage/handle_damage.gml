///@function handle_damage(reciever, damage)
///@param reciever The object that is recieving damage.
///@param damage The damage value that the reciever is taking.

reciever = argument0;
damage = argument1;

reciever.current_health -= damage;

if (reciever.current_health <= 0) {
	instance_destroy(reciever);	
}

