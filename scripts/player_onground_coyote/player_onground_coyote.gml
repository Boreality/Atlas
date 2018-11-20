onground = place_meeting(x,y+1,obj_wall)
if(onground)
{
	jumpbuffer = 6;
	coyote_timer = coyote_timer_max;
}
else coyote_timer--;