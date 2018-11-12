/// @desc Setting up timers and checks

//Timers

first_pause_max = second(2);
first_pause = first_pause_max;

drop_dialogue_timer_max = second(4);
drop_dialogue_timer = drop_dialogue_timer_max;


glide_dialogue_timer_max = second(2);
glide_dialogue_timer = glide_dialogue_timer_max;

//Checks
check_walkIn = true;
glide_check = true;
glide_cancel_check = true;
tut0_completed = false;


//ID holders
first_dialogue_box = noone;
jump_dialogue_box = noone;
drop_dialogue_box = noone;
glide_dialogue_box = noone;

//Coord holders
first_pause_coordsx = 0;
first_pause_coordsy = 0;
