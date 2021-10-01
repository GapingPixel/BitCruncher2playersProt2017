/// @description Set pause
surf_pause = -1;
alpha = .5;
//Fix view position
//instance_create(x,y,obj_camera);
pause_background = background_create_from_surface(application_surface,0,0,surface_get_width(application_surface),surface_get_height(application_surface),0,0);
//Initialize Options
option = 0;
maxOption = 0;
menu_index = MENU_STANDARD;
//Wait for option
alarm[0] = room_speed*0.4;
alarm[1] = room_speed *0.25;

//Menu stuff
xx = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2;

text[4] = "Exit to desktop";
text[3] = "Exit to menu";
text[2] = "Controls";
text[1] = "Options";
text[0] = "Resume";
up = true;
scale = 1;

text_options[5] = "Back";
text_options[4] = "Vibration";
text_options[3] = "Volume";
text_options[2] = "Vsync";
text_options[1] = "FullScreen";
text_options[0] = "Resolution";
//Option selection
for ( var i = 5; i >= 0; i--) {
    yy[i] = __view_get( e__VW.YView, 0 ) + 24 +(16*i) 
}

for ( var i = 5; i >= 0; i--) {
    yyyy[i] = __view_get( e__VW.YView, 0 ) + 24 +(16*i) 
}

xxx = __view_get( e__VW.XView, 0 ) + 175;
//Options text
xxxx = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )*.25; 
//Volume Position
vol_x = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*.58;
vol_y = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )*.66;

fullscreen[1] = "On";
fullscreen[0] = "Off";
vsync[1] = "On";
vsync[0] = "Off";
vibration[1] = "On";
vibration[0] = "Off";






