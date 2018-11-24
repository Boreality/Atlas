//destination[dest.room] = room0;
//destination[dest.x] = obj_data.rm0_xpos_default;
//destination[dest.y] = obj_data.rm0_ypos_default;

if(!file_exists(SAVEFILE))
{
	init_door(rm_indoor0,obj_player); //new game
}
else
{
	//load game
	var file = file_text_open_read(SAVEFILE);
	var target = file_text_read_real(file);
	global.cake = file_text_read_real(file);
	global.bull = file_text_read_real(file);
	file_text_close(file);
	init_door(target,obj_player);
}
