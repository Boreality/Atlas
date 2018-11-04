 
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
global.cake = 1;
global.bull = false;





room_goto_next(); //Leave for menu
