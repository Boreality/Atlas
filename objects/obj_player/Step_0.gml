image_yscale = scale;
#region //Input
if(has_control)
{
key_left = keyboard_check_direct(ord("A"));
key_right = keyboard_check_direct(ord("D"));
key_down = keyboard_check_direct(ord("S"));
key_interact = keyboard_check_pressed(ord("E"));
key_sprint = keyboard_check_pressed(vk_shift);

key_jump = keyboard_check_pressed(vk_space);
key_jump_hold = keyboard_check(vk_space);
key_jump_released = keyboard_check_released(vk_space);
}
#endregion

player_hmovement_();
player_vmovement();
player_jump();
player_fracdump();
player_collision_horizontal();
x += hsp;
player_collision_vertical();
y += vsp;
player_umbrella();
player_onground_coyote();

//Adjust Sprite

if(hsp != 0)
{
	sprite_index = spr_player_run;
	image_xscale = (sign(hsp)/5); 
}
else sprite_index = spr_player;

if(!onground)
{	
	if(umbrella)
	{
		sprite_index = spr_player_hover;
	}
	else
	{
		sprite_index = spr_player_air;
		if(vsp >= 0) image_index = 0; else image_index = 1;
	}
	image_speed = 0;
	
}
else // if onground
{
	
	if(sprite_index == spr_player_air) //this activates as soon as player lands
	{
		repeat(5)
		{
			with(instance_create_layer(x,bbox_bottom,"Effects",obj_dust))	vsp = 0;
			show_message("run");
		}
	}
	if(hsp != 0)
	{
		sprite_index = spr_player_run;
		if(onground) image_speed = 3;
	}
	else sprite_index = spr_player;
}

//standard effects
if(key_interact) effect_create_above(ef_smokeup,x,y,10,c_gray);
