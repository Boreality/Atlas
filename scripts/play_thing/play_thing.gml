if(sprite_index != spr_tural_guitar)
{
	sprite_index = spr_tural_guitar;	
}

//activating music
if(check[16])
{
	audio_play_sound(snd_thing,3,false);
	check[16] = false;
}

playing_guitar = true;

thing_song_timer--;
if(thing_song_timer <= 0)
{
	sprite_index = spr_tural;
	playing_guitar = false;
	audio_stop_sound(snd_thing);
	thing_song_timer = thing_song_timer_max;
	check[16] = true;	
}



