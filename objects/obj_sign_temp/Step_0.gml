
if(player_collide) && (!instance_exists(obj_text))
{
	if(!automatic)
	{
		if(interact)
		{
			with(instance_create_layer(x,y-sprite_height,"GUI",obj_text))
			{
				text = other.text;	
				length = string_length(text);
		
			}
			with(obj_camera) follow = other.id;
		}
	}
	else
	{
		with(instance_create_layer(x,y-sprite_height,"GUI",obj_text))
			{
				text = other.text;	
				length = string_length(text);
		
			}
			with(obj_camera) follow = other.id;
	}
}

