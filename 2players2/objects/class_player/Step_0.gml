/// @description  Move the player

//Pause
if (start) {
   instance_create(0,0,obj_pause);
}

moving = left + right;
hspd = moving * movespeed;

if (vspd < 3) {
   vspd += grav;
}

if (jump && !audio_is_playing(snd_jump)) {
   audio_play_sound(snd_jump,1,0);
}

if (place_meeting(x,y+1,class_solid)) {
   vspd = jump * -jumpspeed;
}



//Horizontal Collision

if (place_meeting(x+hspd, y, class_solid)) {
   while(!place_meeting(x+sign(hspd),y,class_solid)) {
   x += sign(hspd);
   }
   hspd = 0;
}

//x += hspd;

//Vertical Collision
if (place_meeting(x, y+vspd, class_solid)) {
   while (!place_meeting(x,y+sign(vspd),class_solid)) {
         y += sign(vspd);
   }
   vspd = 0;
}

x += hspd;
y += vspd;


//Animation
if (vspd > 0) {
   image_index = 1;
} else {
  image_index = 0;
}

if (hspd != 0) {
   image_xscale = sign(hspd);
}

//Attack
if (attack_key && alarm[1] <= 0) {
   audio_play_sound(snd_shotgun_hitwall,1,false);
   alarm[1] = room_speed/2;
   with (instance_create(x+4*sign(image_xscale),y,obj_bullet)) {
        direction = 45;
        hspeed = 3*sign(other.image_xscale);
        image_xscale = other.image_xscale;
   }
}


// Enable platform actions
/*
    Call enable_movement_platform_actions() as a shortcut script for
    setting up the platform actions. You can customize what platform actions
    you want by using the other "enable_action" scripts individually.
*/
/*
enable_movement_platform_actions(.15, 2, 8, right, left, jump, jump_release);

// Move the entity
/*
    You have to call move_movement_entity() at the end of the step event
    for each object that you want using the movement engine functions.
*/
/*
if (attack_key) {
   state = 1;
   with (instance_create(x,y,obj_sword)) {
        image_xscale = sign(other.hspd);
        attacker = id;
   }
   alarm[0] = room_speed/3;
}

switch (state) {
case 0: 
move_movement_entity();
break;
case 1:
if (alarm[0]) {
   state = 0;
}
break;
}



/*
    Thank you for using my movement engine. You are free to use this engine
    in your game as long as you credit "Benjamin Anderson (Heartbeast)" in your
    game's credits.
    
    YOU ARE NOT ALLOWED to sell this engine individually. It must be part of
    a larger game project.
    
    For feedback or bugs email me at: heartbeast.studios@gmail.com
*/

/* */
/*  */
