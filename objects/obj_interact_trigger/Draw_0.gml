
draw_self();

if(colliding) && (!automatic) draw_interact();

if(visible) image_alpha = 100;
else image_alpha = 0;
	