//section = creator.text_section;
if(interact){
	//only increase page, if page +1 is less than total number of entries
	if(page +1 < array_length_2d(text,creator.text_section)){
		page += 1;
	} else {
		instance_destroy();
		creator.alarm[1] = 1; //In creators (ex. johns) alarm event, will trigger the code required after 1 frame
	}
}
