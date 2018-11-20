draw_set_text(c_white,fnt_text,fa_left, fa_top);
draw_text(50,50,"Vsp: " + string(obj_player.vsp));
draw_text(50,80,"Umbrella: " + string(obj_player.umbrella));
draw_text(50,100,"Onground: " + string(obj_player.onground));
draw_text(50,120,"Project Atlas, a game by Boreality");
draw_text(50,150,"Cake: " + string(global.cake));
draw_text(50,170,"Bull: " + string(global.bull));
draw_text(50,190,"Thing timer" + string(obj_tural.thing_song_timer));
draw_text (50,210, "Textbox destruction: "+ string(obj_tural.textbox_destruction))

//if(instance_exists(obj_door))draw_text(50,159,string(obj_door.backdrop_midpoint));

