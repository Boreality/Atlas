draw_text(50,50,"Vsp: " + string(obj_player.vsp));
draw_text(50,80,"Umbrella: " + string(obj_player.umbrella));
draw_text(50,100,"Onground: " + string(obj_player.onground));
draw_text(50,120,"Project Atlas, a game by Boreality");
draw_text(50,150,string(global.cake));
if(instance_exists(obj_door))draw_text(50,159,string(obj_door.backdrop_midpoint));

