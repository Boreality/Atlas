
colliding = false;
my_textbox = noone;
textbox_destruction = false;



text_section = tural.intro;

my_text[tural.intro,0] = "Oh hey.";
my_text[tural.intro,1] = "How did you this place? \n It was built specifically to stop people coming in";
my_text[tural.intro,2] = "It was working perfectly fine until you came along";
my_text[tural.intro,3] = "Oh well, now you are here...";
my_text[tural.intro,4] = "I found this place a while back and within found a trunk full of sheets of paper";
my_text[tural.intro,5] = "they have a weird pattern on them. Lines with numbers scattered around them";
my_text[tural.intro,6] = "I consulted the museam and found that they are music sheets. For a instrument called a 'Guitar' ";
my_text[tural.intro,7] = "So I took one from the museam and decided to try and play these tunes";
my_text[tural.intro,8] = "Some of their titles are unclear, and i'm not that good at playing them, but do you want to hear some?";


my_text[tural.battery,0] = "Cricle of Destruction. Its a pretty cool titel, but honestly its a rather calm song. ";
my_text[tural.battery,1] = "I'm kind of sad, as I couldnt find most of the other papers for it. So I am guessing this is the beginnning";
my_text[tural.battery,2] = "Well, here it is";

my_text[tural.ktulu,0] = "The kall of ktulhu";
my_text[tural.ktulu,1] = "This is probably my favoiraite from the bunch. Its kind of haunting but pleasant";
my_text[tural.ktulu,2] = "Begin!";

my_text[tural.sanitarium,0] = "Sanitarium";
my_text[tural.sanitarium,1] = "Quite a simple titel, but I find it fits the song quite well";

my_text[tural.creeping,0] = "Die by my hand";
my_text[tural.creeping,1] = "I'm going to be honest, this is the least I have found, but probably the best sounding.";
my_text[tural.creeping,2] = "In theory anyway. \n \n Enter!";

my_text[tural.thing,0] = "Stranger Eaons";
my_text[tural.thing,1] = "Whoever wrote these isnt even trying anymore.";

my_text[tural.die,0] = "Die elsewhere";
my_text[tural.die,1] = "Oh! I have actually gotten quite good at this one"
my_text[tural.die,2] = "This is probably the most fun one to play as well. Heck, do you want to play this one afterwards?";
my_text[tural.die,3] = "Well, for now, lets go";

my_text[tural.final,0] = "Nice meeting you!";
name = "Tural";

check[0] = true;
check[1] = true;
check[2] = true;
check[3] = true;
check[4] = true;
check[5] = true;
check[6] = true;

//music checks
check[10] = true;
check[11] = true;
check[12] = true;
check[13] = true;
check[14] = true;
check[15] = true;
check[16] = true;
check[17] = true;
choice_length = array_length_1d(check)

playing_guitar = false;

//song timers
battery_song_timer_max = audio_sound_length(snd_battery) * room_speed;
battery_song_timer = battery_song_timer_max;

creeping_song_timer_max = audio_sound_length(snd_creeping) * room_speed;
creeping_song_timer = creeping_song_timer_max;

ktulu_song_timer_max = audio_sound_length(snd_ktulu) * room_speed;
ktulu_song_timer = ktulu_song_timer_max;

die_song_timer_max = audio_sound_length(snd_die) * room_speed;
die_song_timer = die_song_timer_max;

sanitarium_song_timer_max =audio_sound_length(snd_sanitarium) * room_speed;
sanitarium_song_timer = sanitarium_song_timer_max;

bell_song_timer_max = audio_sound_length(snd_bell) * room_speed;
bell_song_timer = bell_song_timer_max;

thing_song_timer_max = audio_sound_length(snd_thing) * room_speed;
thing_song_timer = thing_song_timer_max;
