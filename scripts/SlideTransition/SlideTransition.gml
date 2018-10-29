/// @desc SlideTransition(mode, targetroom)
/// @arg Mode sets transition mode between next, intro restart and goto
/// @arg target sets target room when using goto mode

with(obj_transition)
{
	mode = argument[0];
	if(argument_count > 1)
	{
		target = argument[1];	
	}
	
	
}


