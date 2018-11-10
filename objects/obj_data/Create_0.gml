 
//Macros
#macro SAVEFILE "Save.sav"
#macro player_collide point_in_circle(obj_player.x,obj_player.y,x,y,128)
#macro interact obj_player.key_interact


#region room transitions
rm0_xpos_default = 512;
rm0_ypos_default = 448;

enum dest
{
	rm,
	target
}

//global.target_xpos = rm0_xpos_default;
//global.target_ypos = rm0_ypos_default;
global.target = 0;
global.targetrm = 0;
#endregion

//Dialogue flags
global.cake = false;
global.bull = false;


//Display
	// Display Properties
	ideal_width = 0;
	ideal_height = 1080;//1080;

	aspect_ratio = display_get_width()/display_get_height();
	ideal_width = round(ideal_height*aspect_ratio);


	// Check for odd number
	if (ideal_width and 1) ideal_width++;

	surface_resize(application_surface,ideal_width,ideal_height);
	window_set_size(ideal_width,ideal_height);
	window_set_fullscreen(true);



room_goto_next(); //Leave for menu
