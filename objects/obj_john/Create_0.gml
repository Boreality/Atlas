colliding = false;
my_textbox = noone;
interact_check = false;

enum d
{
	intro,
	cake,
	bull,
	final
}
text_section = d.intro;
my_text[d.intro,0] = "Hi, I'm John!";
my_text[d.intro,1] = "What a lovley afternoon, dont you think?";
my_text[d.intro,2] = "...";

my_text[d.cake,0] = "You ate my cake";
my_text[d.cake,1] = "How fucking dare you";
my_text[d.cake,2] = "That was my best cake!";
my_text[d.cake,3] = "Why would you do this?";
my_text[d.cake,4] = "My whole life is in tatters";
my_text[d.cake,5] = "Begone! Let me wallow in my grief. \nOh god the horror";

my_text[d.bull,0] = "So the new bull racing is in town.";
my_text[d.bull,1] = "Personally I preffer watching crab buckets";

my_text[d.final,0] = "Buzz off wheelie";
name = "John";

//movement stufff
hsp = 0;
vsp = 0;
grv = 0.3;

//checks
check[0]=true;
check[1]=true;
check[2]=true;
check[3]=true;
check[4]=true;
check[5]=true;
