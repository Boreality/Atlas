#region//Umbrella
if(distance_to_object(obj_wall) > 35) && (vsp > 0) 
{
    flight = true;
}
else flight = false;

//umbrella

if(key_jump_hold) && (umbrella_check)
{
	if(flight) 
	{
		umbrella = true;
		umbrella_check = false;
	}
	
}
if(key_jump_released) || (onground)
{
	umbrella = false;
	umbrella_check = true;
}
#endregion