if(sprite_index != spr_tural_guitar)
{
	sprite_index = spr_tural_guitar;	
}

//activating music
if(check[10])
{
	audio_play_sound(snd_die,3,false);
	check[10] = false;
}

playing_guitar = true;

die_song_timer--;
if(die_song_timer <= 0)
{
	sprite_index = spr_tural;
	playing_guitar = false;
	audio_stop_sound(snd_die);
	die_song_timer = die_song_timer_max;
	check[10] = true;	
	textbox_destruction = false;
}



