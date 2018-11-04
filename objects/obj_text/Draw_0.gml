var halfw = w * 0.5;
var x1 = x-halfw-border; //Left side of box
var y1 = y-h-(border*2); // height of box
var x2 = x+halfw+border; //right side of box
						 //y is the origin of the box (which is at the bottom)

//draw box
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_roundrect_ext(x1,y1,x2,y,15,15,false);
draw_sprite(spr_marker,0,x,y); //x and y is the origin of the textbox;
draw_set_alpha(1);

//draw text
draw_set_text(c_white,fnt_text, fa_center, fa_top);
draw_text(x,y-h-border,text_current);
