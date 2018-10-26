
#region //Input
key_left = keyboard_check_direct(ord("A"));
key_right = keyboard_check_direct(ord("D"));
key_down = keyboard_check_direct(ord("S"));
key_jump = keyboard_check_pressed(vk_space);
key_interact = keyboard_check_pressed(ord("E"));
key_slide = keyboard_check_pressed(vk_shift);
key_jump_hold = keyboard_check(vk_space);
#endregion

#region//Calculate horizontal movement
var dir = key_right - key_left;
hsp += dir * hsp_acc;
if(dir == 0)
{
	var hsp_fric_final = hsp_fric_ground;
	if(!onground) hsp_fric_final = hsp_fric_air;
	hsp = Approach(hsp,0,hsp_fric_final);
}
hsp = clamp(hsp,-hsp_walk,hsp_walk);
#endregion
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
	
	//vsp += 0.02;	
	
}

//Ground Jump
if(key_jump)
{
	if(!onground)anticipation = true;	

}
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

#region//Dump fractions and get final integer speeds

hsp += hsp_frac;
vsp += vsp_frac;
hsp_frac = frac(hsp);
vsp_frac = frac(vsp);
hsp -= hsp_frac;
vsp -= vsp_frac;

#endregion


#region//Horizontal collision
if(place_meeting(x + hsp,y,obj_wall))
{
	
	var onepixel = sign(hsp);
	while (!place_meeting(x+onepixel,y,obj_wall)) x += onepixel;
	hsp = 0;
	hsp_frac = 0;
}
#endregion

//Horizontal move
x += hsp;

#region//Vertical Collision
if(place_meeting(x,y + vsp, obj_wall))
{
	var onepixel = sign(vsp);
	while (!place_meeting(x,y+onepixel,obj_wall)) y += onepixel;
	vsp = 0;
	vsp_frac = 0;	
}
#endregion
//Vertical Move
y += vsp;

#region//Umbrella
if(distance_to_object(obj_wall) > 35) 
{
    flight = true;
}
else flight = false;

//umbrella
if(!onground) && (flight) && (key_jump_hold) && (vsp > 0) 
{
	umbrella = true;

} else {

	umbrella = false;
}
#endregion


//Calc current status

onground = place_meeting(x,y+1,obj_wall)
if(onground)
{
	jumpbuffer = 6;
	coyote_timer = coyote_timer_max;
}
else coyote_timer--;
//Coyote time





//Adjust Sprite
if(hsp != 0) image_xscale = sign(hsp);
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
else
{
	if(hsp != 0)
	{
		sprite_index = spr_player_run;
		if(onground) image_speed = 3;
	}
	else sprite_index = spr_player;
}

//Weather

if(key_interact) effect_create_above(ef_smokeup,x,y,10,c_gray);


