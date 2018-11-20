#region//Calculate horizontal movement
var dir = key_right - key_left;
hsp += dir * hsp_acc;
if(dir == 0)
{
	var hsp_fric_final = hsp_fric_ground;
	if(!onground) hsp_fric_final = hsp_fric_air;
	hsp = Approach(hsp,0,hsp_fric_final);
}
hsp = clamp(hsp,-hsp_walk,hsp_walk);
#endregion