 

cam = view_camera[0];
//camera_set_view_size(cam,obj_display.ideal_width,obj_display.ideal_height)
follow = obj_player;


view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;

xTo = x;
yTo = y;


shake_length = 0;	//How long it takes
shake_magnitude = 0;	//How intense it is
shake_remain = 0;	//Timer 
shake_buff = 64;


if(room != rm_menu)
{
	x = global.target.x;
	y = global.target.y;
}


