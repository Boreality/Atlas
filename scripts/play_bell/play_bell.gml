if(sprite_index != spr_tural_guitar)
{
	sprite_index = spr_tural_guitar;	
}

//activating music
if(check[15])
{
	audio_play_sound(snd_bell,3,false);
	check[15] = false;
}

playing_guitar = true;

bell_song_timer--;
if(bell_song_timer <= 0)
{
	sprite_index = spr_tural;
	playing_guitar = false;
	audio_stop_sound(snd_bell);
	bell_song_timer = bell_song_timer_max;
	check[15] = true;	
	textbox_destruction = false;
}



