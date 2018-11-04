/// @desc Progress text!

letters += spd;
text_current = string_copy(text,1,floor(letters));

draw_set_font(fnt_text);
if(h == 0) h = string_height(text);
w = string_width(text_current); 

//destroy when done
if(letters > length) && (interact)
{
	instance_destroy();
	with(obj_camera) follow = obj_player;
}


