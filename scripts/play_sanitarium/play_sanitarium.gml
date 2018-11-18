if(sprite_index != spr_tural_guitar)
{
	sprite_index = spr_tural_guitar;	
}

//activating music
if(check[12])
{
	audio_play_sound(snd_sanitarium,3,false);
	check[12] = false;
}

playing_guitar = true;

sanitarium_song_timer--;
if(sanitarium_song_timer <= 0)
{
	sprite_index = spr_tural;
	playing_guitar = false;
	audio_stop_sound(snd_sanitarium);
	sanitarium_song_timer = sanitarium_song_timer_max;
	check[10] = true;	
	textbox_destruction = false;
}



