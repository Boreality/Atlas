#region//Vertical Collision
if(place_meeting(x,y + vsp, obj_wall))
{
	var onepixel = sign(vsp);
	while (!place_meeting(x,y+onepixel,obj_wall)) y += onepixel;
	vsp = 0;
	vsp_frac = 0;	
}
#endregion
