if(sprite_index != spr_tural_guitar)
{
	sprite_index = spr_tural_guitar;	
}

//activating music
if(check[11])
{
	audio_play_sound(snd_battery,3,false);
	check[11] = false;
}

playing_guitar = true;

battery_song_timer--;
if(battery_song_timer <= 0)
{
	sprite_index = spr_tural;
	playing_guitar = false;
	audio_stop_sound(snd_battery);
	battery_song_timer = battery_song_timer_max;
	check[11] = true;	
	
}



