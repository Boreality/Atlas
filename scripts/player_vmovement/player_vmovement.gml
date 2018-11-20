//Calc vertical movement
if(!umbrella) //normal
{	
	vsp += grv;
	air_check = true;
}
else
{
	if(air_check)
	{
		vsp = 1;	
		air_check = false;
	}
}