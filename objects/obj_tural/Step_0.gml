

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
		case tural.battery:		play_battery();		break;
		case tural.die:			play_die();			break;
		case tural.sanitarium:	play_sanitarium();	break;
		case tural.ktulu:		play_ktulu();		break;
		case tural.creeping:	play_creeping();	break;
		case tural.thing:		play_thing();		break;
		case tural.bell:		play_bell();		break;
	}
}
else

//textbox_destruction = false;


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
				textbox_destruction = false;
				my_textbox = instance_create_layer(x - middleTextBox,y - (npcHeight * 3),"Text",obj_textbox);
				my_textbox.text = my_text;
				my_textbox.creator = id;
			}
		}
	}
	else{
		if(my_textbox != noone){
			instance_destroy(my_textbox);
			textbox_destruction = true;
			my_textbox = noone;
		}
		colliding = false;
	}
//}




