/// play_music(check[#], audio, timer, timer_max)
/// @param check[#]
/// @param audio
/// @param timer
/// @param timer_max


//script
if(sprite_index != spr_tural_guitar)
{
	sprite_index = spr_tural_guitar;	
}

//activating music
if(argument0)
{
	audio_play_sound(argument1,3,false);
	argument0 = false;
}

playing_guitar = true;

textbox_destruction = false;
//argument2--;
//if(argument2 <= 0)
//{
//	sprite_index = spr_tural;
//	playing_guitar = false;
//	audio_stop_sound(argument1);
//	argument2 = argument3;
//	argument0 = true;	
//	textbox_destruction = false;
//}
