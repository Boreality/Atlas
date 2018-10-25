



if(player_collide)
{
	draw_interact();
	if(interact)
	{
		if(doorstage.open) doorstage = doorstage.close;
		else doorstage = doorstage.open;
		
	}

}

switch(stage)
{
    case doorstage.open:
        //Set where the door sprites should be
        top.y = backdrop_top;
        bottom.y = backdrop_bottom;
    break;
    case doorstage.opening:
        //USing apporach move towards the centre
        Approach(top.y,backdrop_top,opening_speed);
        Approach(bottom.y,backdrop_bottom,opening_speed);
    break;    
    case doorstage.close:
      //Set where the door sprites should be
        top.y = backdrop_midpoint;
        bottom.y = backdrop_midpoint;
		top.x = id.x;
		bottom.x = id.x; 
		
		
    break;

    case doorstage.closing:
        //using approach move towards the top and bottom
        Approach(top.y,backdrop_midpoint,opening_speed);
        Approach(bottom.y,backdrop_midpoint,opening_speed);
     
    break;

}
