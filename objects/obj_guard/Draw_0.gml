/// @desc Heart
draw_self();

if(place_meeting(x,y,obj_player)) {
	horror_check = true;
	horror_timer = horror_timer_max;
}

if(horror_check == true){
	draw_sprite(spr_heart,1,x,bbox_top - (sprite_height/4));	
	horror_timer--;
	if(horror_timer <= 0){
		horror_check = false;
		horror_timer = horror_timer_max;
	}
}







