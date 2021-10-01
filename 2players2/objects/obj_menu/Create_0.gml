/// @description Initialize Variables
option = 0;
menu_index = MENU_START;
alpha = 1;
maxOption = 3;

//Text vertical position
for ( var i = 5; i >= 0; i--) {
    yy[i] = 52+(18*i) 
}

//Text
text[3] = "Exit";
text[2] = "Controls";
text[1] = "Options";
text[0] = "New Game";
up = true;
scale = 1;

//Options text
text_options[5] = "Back";
text_options[4] = "Vibration";
text_options[3] = "Volume";
text_options[2] = "Vsync";
text_options[1] = "FullScreen";
text_options[0] = "Resolution";

//Option selection
xxx = 176;
xxxx = 52; 
for ( var i = 5; i >= 0; i--) {
    yyyy[i] = 11+(20*i) 
}

//Volume Position
vol_x = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/1.7777777778;
vol_y = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/1.55;

fullscreen[1] = "On";
fullscreen[0] = "Off";
vsync[1] = "On";
vsync[0] = "Off";
vibration[1] = "On";
vibration[0] = "Off";

//Wait
alarm[0] = room_speed *.4;
alarm[1] = room_speed *.25;
//Fade Start
instance_create(x,y,obj_fade_start);

//Blink
blink = true;
//Selection
character_selection[1] = false;
character_selection[0] = false;
char_option[1] = 0;
char_option[0] = 0;




