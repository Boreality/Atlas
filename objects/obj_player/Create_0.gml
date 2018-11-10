/// @description Insert description here
// You can write your code in this editor
has_control = true;

hsp = 0;
vsp = 0;
hsp_frac = 0;
vsp_frac = 0;

hsp_acc = 1;
hsp_fric_ground = 0.70;
hsp_fric_air = 0.35;
hsp_walk = 4;


umbrella = false;
umbrella_check = false;
air_check = true;

vsp_jump = -20;
vsp_max = 11;

onground = false;

grv = 0.3;

jumpbuffer = 0;

flight = false;

anticipation = false;
anticipation_timer_max = 20;
anticipation_timer = anticipation_timer_max;

coyote_timer_max = 10;
coyote_timer = coyote_timer_max;

scale = 0.2;
image_xscale = 0.2;


//Tile collisions
tilemap = layer_tilemap_get_id("Collision");

//positioning

x = global.target.x;
y = global.target.y;




