/// @desc 
with(instance_create_layer(x,y,"Effects",obj_hover_particles)) following = other;	

hsp = 3;
vsp = 0;
grv = 0.1;

horror_check = false;
horror_timer_max = 2 * room_speed;
horror_timer = horror_timer_max;