var rm_w_mid = room_width /2;
var rm_h_mid = room_height/2;


draw_set_text(c_white,fnt_menu, fa_center, fa_top);
draw_text(rm_w_mid,rm_h_mid,"Atlas");
draw_text(rm_w_mid + (rm_w_mid/2),rm_h_mid,"Atlas");

draw_set_text(c_white,fnt_text, fa_center, fa_top);
draw_text(rm_w_mid,rm_h_mid + 50, "Start Game");
draw_text(rm_w_mid + (rm_w_mid/2),rm_h_mid + 50, "Load Game");
