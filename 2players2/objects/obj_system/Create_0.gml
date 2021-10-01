/// @description Settings,Init shader vars & surfs
//Set true random
randomize();
//Default
var default_resolution = display_get_width();
switch (default_resolution) {
       case 640:
       default_res = 0;
       break;
       
       case 800:
       default_res = 1;
       break;
       
       case 960:
       default_res = 2;
       break;
       
       case 1024:
       default_res = 3;
       break;
       
       case 1280:
       default_res = 4;
       break;
       
       case 1366:
       default_res = 5;
       break;
       
       case 1600:
       default_res = 6;
       break;
       
       case 1920:
       default_res = 7;
       break;
}
///Initialize global pad
global.pad[1] = noone;
global.pad[0] = noone;
global.ready[1] = false;
global.ready[0] = false;
//2 players
global.input[2] = noone;
global.input[1] = noone;
global.player[2] = noone;
global.player[1] = noone;
//Races
global.races[1] = 0;
global.races[0] = 0;
//Set surfs
debris_surf = -1;
shader_surf = -1;
///Load game
scr_load_game();
//Apply settings
instance_create(x,y,apply_screen_settings);


