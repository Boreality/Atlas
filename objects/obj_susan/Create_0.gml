colliding = false;
my_textbox = noone;



enum susan {
	intro,
	cake,
	bull,
	final
	
}
text_section = susan.intro;

my_text[susan.intro,0] = "Hi, I'm Susan!";
my_text[susan.intro,1] = "I'm in charge of the lighting of the place.\n How does it look?";
my_text[susan.intro,2] = "Oh, and between you and me;";
my_text[susan.intro,3] = "I think John's up to something";

my_text[susan.cake,0] = "Oh! \n You have some cake!";
my_text[susan.cake,1] = "Well I am a woman in a video game, so i'm on a diet. \n Sorry.";

my_text[susan.bull,0] = "Bulls dont interest me tbh";

my_text[susan.final,0] = "Im done talking to you";
name = "Susan";

check[0] = true;
check[1] = true;
check[2] = true;

choice_length = array_length_1d(check)
//var i = 0;
//check[i] = false; i+=1;
//check[i] = false; i+=1;
//check[i] = false; i+=1;
//check[i] = false; i+=1;
//check[i] = false; i+=1;
//check[i] = false; i+=1;
//check[i] = false; i+=1;