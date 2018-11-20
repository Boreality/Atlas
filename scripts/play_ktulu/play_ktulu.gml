if(sprite_index != spr_tural_guitar)
{
	sprite_index = spr_tural_guitar;	
}

//activating music
if(check[14])
{
	audio_play_sound(snd_ktulu,3,false);
	check[14] = false;
}

playing_guitar = true;

ktulu_song_timer--;
if(ktulu_song_timer <= 0)
{
	sprite_index = spr_tural;
	playing_guitar = false;
	audio_stop_sound(snd_ktulu);
	ktulu_song_timer = die_song_timer_max;
	check[14] = true;	
	
}



