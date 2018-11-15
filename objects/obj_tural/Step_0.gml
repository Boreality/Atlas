

if(check[0]) && (global.cake)
{
	text_section = tural.die;
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
if(my_textbox == noone)
{
	switch(tural)
	{
		case tural.battery:
			if(check[10])
			{
				//play music
				audio_play_sound(snd_battery,3,false);
		
				//enable animation
				//sprite_index = spr_tural_guitar;
		
				// using audio_sound_length(), make timer for when to go back to normal
				check[10] = false;	
				
			}
		break;
		case tural.die:
			if(check[11])
			{
				audio_play_sound(snd_die,3,false);
				//sprite_index = spr_tural_guitar;
				check[11] = false;	
			}
			else
			{
				die_song_timer--;
				if(die_song_timer <= 0)
				{
					audio_stop_sound(snd_die);
					
				}
				
			}
		break;
		case tural.sanitarium:
			audio_play_sound(snd_sanitarium,3,false);	
		
		break;
		
		
	}
	
}
else //Decativate all effects
{
	sprite_index = spr_tural;
	audio_stop_sound(snd_sanitarium);
	audio_stop_sound(snd_die);
	audio_stop_sound(snd_battery);

	
}
	

#endregion

#region Activating song and sprite work on timer



#endregion



var middleTextBox = (sprite_get_width(spr_textbox) /2)
var npcHeight = sprite_get_height(spr_john);

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




