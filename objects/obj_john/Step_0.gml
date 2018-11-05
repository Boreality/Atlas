//movement
//if(!interact_check) hsp = 1;
//else hsp = 0;
//

if(hsp != 0) image_xscale = sign(hsp);

x += hsp;

vsp += grv;
if(place_meeting(x,y+hsp,obj_wall))
{
	vsp = 0;	
}
y += vsp;

//text
if(check[0]) && (global.cake)
{
	text_section = d.cake;
	check[0] = false;
}
else
{
	if(check[1]) && (global.bull)
	{
		text_section = d.bull;
		check[1] = false;
	}
	
}




var middleTextBox = (sprite_get_width(spr_textbox) /2)
var npcHeight = sprite_get_height(spr_john);


if(player_collide){
	//interact
	colliding = true;
	
	//If havent already made textbox, make one
	if(interact)
	{
		interact_check = true;
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
	interact_check = false;
	colliding = false;
}

#region old text systems
/*
if(interact_check)
{
if(global.cake){
	global.cake = false;
	interact_check = false;
	text_section = d.cake;
}
if(global.bull){
	global.bull = false;
	interact_check = false;
	text_section = d.bull;
}
if(!global.cake) && (!global.bull){
	text_section = d.final;	
}
}


alt
if(interact_check)
{
	if(global.cake)
	{
		text_section = d.cake;
		global.cake = false;
	}
	else
	{
		if(global.bull)
		{
			text_section = d.bull;
			global.bull = false;
		}
		else
		{
			text_section = d.intro;	
		}
	}
}
problem with this is that if ever want to check if this was the case, cant.
 unless store in another data strucutre but honestly thats a bit of an ass


old
 if(check[0]) && (global.cake)
 {
 	text_section = d.cake;
 	check[0] = false;
 }
 else
 {
 	if(check[1]) && (global.bull)
 	{
 		text_section = d.bull;
 		check[1] = false;
 	}
 	else
 	{
 		if(check[2])
 		{
 			text_section = d.final;	
 			check[2] = false;	
 		}
 	}
 }

*/
#endregion


