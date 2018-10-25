/// @desc Setting variables, is backdrop side
image_speed = 0;
stage = 0;
enum doorstage {
    open,
    opening,
    close,
    closing
}
stage = doorstage.open;
top = 0;
bottom = 0;


backdrop_midpoint = bbox_bottom + (sprite_get_height(spr_door_backdrop)/2);
backdrop_top = bbox_top + (sprite_get_height(spr_door_backdrop)/10);
backdrop_bottom = bbox_bottom + (sprite_get_height(spr_door_backdrop)/10);
opening_speed = 2;

top = instance_create_layer(id.x,y,"Player",obj_wall);
below = instance_create_layer(id.x,y,"Player",obj_door_platform);
top.direction = 180;

top.y = backdrop_midpoint;
bottom.y = backdrop_midpoint;
top.x = id.x;
bottom.x = id.x; 
/* 
Door planning

I want it to be not a regular wooden door. Sliding doors up/dowwards when sideways


two objects that move together
one object that somehow moves the sprites on thier own

THIS ONE ->> one object that controls 2 sprites that move. once open, can move through 
state= open, close, opening, closing

Needs 2 spirtes: the actual doors, and the backdrop/collision

determine the distances. 
Have values: 
    Middlepoint (where doors meet) 
        TAke half the backgroud sprite height.
    End points (Where doors stop)
        1/10 of backdrop sprite and 9/10 of sprite height
    

when at static stages (open,close), hard set the values in case it is incorrect



    



*/








