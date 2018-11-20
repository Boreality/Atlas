//Ground Jump
if(key_jump) if(!onground)anticipation = true;	

if(anticipation)
{
	anticipation_timer--;
	if(anticipation_timer <= 0) anticipation = false;
	if(onground)
	{
		jump();
		coyote_timer = 0;	
		anticipation_timer = anticipation_timer_max;
		anticipation = false;
	}
}

if(jumpbuffer > 0) or (coyote_timer > 0)
{	
	jumpbuffer--;
	if(key_jump) 
	{
		jump();
		coyote_timer = 0;
	}
}
vsp = clamp(vsp,-vsp_max,vsp_max);