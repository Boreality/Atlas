//movement
if(!interact_check) hsp = 1;
else hsp = 0;
x += hsp;



vsp += grv;
if(place_meeting(x,y+hsp,obj_wall))
{
	vsp = 0;	
}
y += vsp;

//text
//if(check[0]) && (global.cake)
//{
//	text_section = d.cake;
//	check[0] = false;
//}
//else
//{
//	if(check[1]) && (global.bull)
//	{
//		text_section = d.bull;
//		check[1] = false;
//	}
	
//}

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




