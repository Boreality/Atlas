

//draw textbox
draw_sprite(spr_textbox,0,x,y);

//draw title
draw_text(x,y -30,creator.name);

//draw sprite
draw_set_text(c_white,fnt_text,fa_left, fa_top);

draw_text_ext(x+10,y+10,text[section,page],text_string_height, box_width);


