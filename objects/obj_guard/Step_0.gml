/// @desc


vsp+=grv;
if(place_meeting(x+hsp,y,obj_wall)){
	hsp = -hsp;	
}
x+=hsp;

if(place_meeting(x,y+vsp,obj_wall)){
	vsp = 0;	
}


y+=vsp;

image_xscale = sign(hsp);	
