if(place_meeting(x,y,obj_player)){
	colliding = true; 
	if(automatic)
	{
		global.target = destination[dest.target];
		global.targetrm = destination[dest.rm];
		//room_goto(destination[dest.rm]);
		SlideTransition(TRANS_MODE.GOTO);
	}
	if(!automatic)
	{
		if(interact)
		{
			global.target = destination[dest.target];
			global.targetrm = destination[dest.rm];
			//room_goto(destination[dest.rm]);
			SlideTransition(TRANS_MODE.GOTO);
		}	
	}

}
else colliding = false;

if(place_meeting(x,y,obj_cursor)){
	if(mouse_check_button(mb_left)){
		global.target = destination[dest.target];
		global.targetrm = destination[dest.rm];
		SlideTransition(TRANS_MODE.GOTO);		
		
	}
}

//Door system re-planning
/*
New system
	All doors have destination to where going. No auto going-back. Keep coords and shit though

	set a var called destination 
		The destination is coords of the other dooor!!!!. So destination is 2 things; the room and coords of the target door.
*/
/*
	New update:r cannot get coords from doors/objs out of the room.
		get them all beforehand (PAIN IN THE ASS)
		
		go through the entire game to start with, cycle through rooms and get data from there.
		

	SOLUTION: activate the xy-coord code once in the room
			paired with transitions where cant move while happening.
			
			Steps: take the target door and room from the oriingal trigger
				Move to room
				In create event take the coords from the target and place player and camera there.
				Later add a transition long enough to disguise this fact.

*/








