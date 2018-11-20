#region//Horizontal collision
if(place_meeting(x + hsp,y,obj_wall))
{
	var onepixel = sign(hsp);
	while (!place_meeting(x+onepixel,y,obj_wall)) x += onepixel;
	hsp = 0;
	hsp_frac = 0;
}
#endregion

