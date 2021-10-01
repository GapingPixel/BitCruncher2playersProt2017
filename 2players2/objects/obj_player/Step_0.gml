/// @description Input
scr_input(0,device);
event_inherited();

/*
var nnn;
///player movement
image_index = 0; nnn = 1.25;
if down and gravity = 0 {nnn = 0.5;}
if left and place_free(x-nnn, y) {draw_xscale = 1; x -= nnn;}
if right and place_free(x+nnn, y) {draw_xscale = -1; x += nnn;}
if x = xprevious and y = yprevious {image_single = 0.5;} else {image_speed = 0.2;}
if jump and gravity = 0 and place_free(x, y-4) {image_index = 1; vspeed = -4.1; sound_stop(snd_jump); sound_play(snd_jump);}
if place_free(x, y+1) {image_index = 1; gravity = 0.24;}
if !place_free(x, y) {image_index = 0}


//gliding along ceiling
if vspeed < 0 and !place_free(x, y+vspeed) {y -= vspeed;}


//max falling speed
if vspeed > 4 {vspeed = 4;}

//one way platforms
with(class_solid){if y > obj_player.y-2 {solid = true;} else {solid = false;}}
*/

/*
event_inherited();

/* */
/*  */
