

if(check[0]) && (global.cake)
{
	text_section = tural.thing;
	check[0] = false;
}
else
{
	if(check[1]) && (global.bull)
	{
		text_section = tural.battery;
		check[1] = false;
	}
	
}
#region enabliong music and animation.

//Activate after a textbox has finished and this is the result.
if(textbox_destruction)
{
	switch(text_section)
	{
		case tural.battery:		     play_music(check[11],snd_battery) break;//,battery_song_timer,battery_song_timer_max);    break;
		//case tural.die:			         play_music(check[10],snd_die,die_song_timer,die_song_timer_max);	    break;
		//case tural.sanitarium:	  play_music(check[12],snd_sanitarium,sanitarium_song_timer,sanitarium_song_timer_max);	break;
		//case tural.ktulu:		   	play_music(check[13],snd_ktulu,ktulu_song_timer,ktulu_song_timer_max);	break;
		//case tural.creeping:	    play_music(check[14],snd_creeping,creeping_song_timer,creeping_song_timer_max);	break;
		//case tural.thing:			    play_music(check[15],snd_thing,thing_song_timer,thing_song_timer_max);	break;
		//case tural.bell:			    play_music(check[16],snd_bell,bell_song_timer,bell_song_timer_max);	break;
	}
}
else
{
	if(!check[11])
	{
		battery_song_timer--;
		if(battery_song_timer <= 0)
		{
			sprite_index = spr_tural;
			playing_guitar = false;
			audio_stop_sound(snd_battery);
			battery1song_timer = battery_song_timer_max;
			check[11] = true;	
	
		}
	}
	
}

//Make big scipt to make song, not have all similar ones


#endregion
	
var middleTextBox = (sprite_get_width(spr_textbox) /2)
var npcHeight = sprite_get_height(spr_john);

//if(!playing_guitar)
//{
	if(player_collide){
		colliding = true;
		//If havent already made textbox, make one
		if(interact)
		{
		   
			if(my_textbox == noone){
				my_textbox = instance_create_layer(x - middleTextBox,y - (npcHeight * 3),"Text",obj_textbox);
				my_textbox.text = my_text;
				my_textbox.creator = id;
			}
		}
	}
	else{
		if(my_textbox != noone){
			instance_destroy(my_textbox);
			my_textbox = noone;
		}
		colliding = false;
	}
//}




