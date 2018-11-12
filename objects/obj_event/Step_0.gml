/// @desc The stuff
var textPlacey = obj_player.y - 100;

switch(room)
{
	case rm_tutorial:
		if(!tut0_completed)
		{
			//Walking in through side, then pausing and getting a tutorial dialogue
			if(check_walkIn)
			{
				if(obj_player.x <= start_pos.x)
				{
					obj_player.has_control = false;
					obj_camera.follow = start_pos;
					obj_player.hsp = 2;
				}
				else
				{
					obj_player.has_control = true;
					obj_camera.follow = obj_player;
					//instance_destroy(start_pos);
					check_walkIn = false;
				}
			}
			else first_pause--;	
		
			if(first_pause <= 0) && (first_dialogue_box == noone)
			{
				with(instance_create_layer(obj_player.x,textPlacey,"Text",obj_text))
				{
					text = "Press A and D to move Left and Right";
					other.first_dialogue_box = id; 
				}
			
			}
			if(obj_player.key_left) if(obj_player.key_right) instance_destroy(first_dialogue_box);
		
			//jump textbox
			with(obj_player)
			{
				if(place_meeting(x,y,tut_jump)) && (obj_event.jump_dialogue_box == noone)
				{
						with(instance_create_layer(x,textPlacey,"Text",obj_text))
						{
							text = "Press <Space> to Jump";
							obj_event.jump_dialogue_box = id;
						
						}
				}
			}
			if(obj_player.key_jump)
			{
				instance_destroy(jump_dialogue_box);
				instance_destroy(tut_jump)
			}
		
			//Droping through platform tutorial
			with(obj_player)
			{
				if(place_meeting(x,y,tut_pass)) && (obj_event.drop_dialogue_box == noone)
				{
					with(instance_create_layer(obj_player.x,textPlacey,"Text",obj_text))
					{
						text = "Press S to drop through platforms";
						obj_event.drop_dialogue_box = id;
					}	
				
				}
			}
			if(drop_dialogue_box != noone)
			{
				drop_dialogue_timer--;
				if(drop_dialogue_timer <= 0)
				{
					instance_destroy(drop_dialogue_box);
					instance_destroy(tut_pass);
				}
			}
			if(place_meeting(x,y,tut_exit)) tut0_completed = false;	
		}
	break;
	
	case rm_tutorial1:
		//Gliding tutorial
		with(obj_player)
		{
			//making camera zooming out and creating text
			if(place_meeting(x,y,tut_glide)) && (other.glide_check) && (obj_event.glide_dialogue_box == noone)
			{
				obj_camera.follow = tut_glide_cam;
				other.glide_check = false;
				with(instance_create_layer(x + 50,textPlacey,"Text",obj_text))
				{
					text = "Hold SPACE while in the air to glide;"	
					obj_event.glide_dialogue_box = id;
				}
			
			}
			
			//Destroying text
			with(other)
			{
				if(glide_dialogue_box != noone)
				{
					glide_dialogue_timer--;
					if(obj_player.umbrella) && (glide_dialogue_timer <= 0)
					{
						instance_destroy(glide_dialogue_box);
					}
				}
			}
			
			
			//stopping camera zoom out once made it to other side of building
			if(place_meeting(x,y,tut_glide_cancel)) && (other.glide_cancel_check)
			{
				obj_camera.follow = id;	
				other.glide_cancel_check = false;
			}
		}
	
	
	
	
	break;
	

}


