if(sprite_index != spr_tural_guitar)
{
	sprite_index = spr_tural_guitar;	
}

//activating music
if(check[13])
{
	audio_play_sound(snd_creeping,3,false);
	check[13] = false;
}

playing_guitar = true;

creeping_song_timer--;
if(creeping_song_timer <= 0)
{
	sprite_index = spr_tural;
	playing_guitar = false;
	audio_stop_sound(snd_creeping);
	creeping_song_timer = creeping_song_timer_max;
	check[13] = true;	
	textbox_destruction = false;
}



