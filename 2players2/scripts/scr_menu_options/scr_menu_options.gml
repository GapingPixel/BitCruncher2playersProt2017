/// @description scr_menu_options(pause)
/// @param pause
function scr_menu_options(argument0) {
	//gml_pragma("forceinline");
	//Controls
	scr_menu_input();

	draw_set_halign(fa_center);
	draw_set_font(fntPixelLife);
	draw_set_colour(c_ltgray);
	//Enter Sound
	if ((enter[0] || enter[1] || enter[KEYBOARD]) && alarm[1]<=0) { 
	   audio_play_sound(snd_accept,0,false);
	}

	//Wait for input and change option
	switch (menu_index) {

	case MENU_NEW_GAME:
	/*//Selection Input
	if (character_selection[0]) {
	//Char selection 1
	if (alarm[0] <= 0) {
	   if (up_key[global.input[1]]) {
	       alarm[0] = room_speed*.2;
	       char_option[0]--;
	       audio_play_sound(snd_selection,1,false);
	   } else if (down_key[global.input[1]]) {
	       alarm[0] = room_speed*.2;
	       char_option[0]++;
	       audio_play_sound(snd_selection,1,false);
	    }
	}
	}
	//Char selection 2
	if (character_selection[1]) {
	if (alarm[3] <= 0) {
	   if (up_key[global.input[2]]) {
	       alarm[3] = room_speed*.2;
	       char_option[1]--;
	       audio_play_sound(snd_selection,1,false);
	   } else if (down_key[global.input[2]]) {
	       alarm[3] = room_speed*.2;
	       char_option[1]++;
	       audio_play_sound(snd_selection,1,false);
	    }
	}
	}*/
	break;

	default:
	if (alarm[0] <= 0) {
	   if (up_key[0] || up_key[1] || up_key[KEYBOARD]) {
	       alarm[0] = room_speed*.2;
	       option--;
	       audio_play_sound(snd_selection,1,false);
	       scale = 1;
	   } else if (down_key[0] || down_key[1] || down_key[KEYBOARD]) {
	       alarm[0] = room_speed*.2;
	       option++;
	       audio_play_sound(snd_selection,1,false);
	       scale = 1;
	    }
	}
	break;
	}

	//Clamp option
	option = clamp(option,0,maxOption);
	if (!argument0) {
	   char_option[0] = clamp(char_option[0],0,maxOption);
	   char_option[1] = clamp(char_option[1],0,maxOption);
	}
	//Options
	switch (menu_index) {

	       case MENU_START:
       
	       if (!audio_is_playing(snd_battle_intro)) {
	          audio_play_sound(snd_battle_intro,1,0);
	       }
	       draw_set_font(fntTitle);
	       draw_set_colour(make_colour_rgb(237,45,80));
	       //draw_text(160,30,"Monster Tower");
	       draw_text(120,20,string_hash_to_newline("Bit Cruncher"));
	       draw_set_font(fntPixelLife);
	       draw_set_colour(c_ltgray);
	       maxOption = 0;
	       if (alarm[2] <=0) {
	          alarm[2]= room_speed*.4;
	       } 
	       if (blink) {
	          draw_text(120,95,string_hash_to_newline("Press Start"));
	       }
	       if (enter[0] || enter[1] || enter[KEYBOARD]) {
	          menu_index = MENU_STANDARD;
	       }
	       break;
       
	       case MENU_STANDARD:
       
	       if (audio_is_playing(snd_battle_intro)) {
	           audio_stop_sound(snd_battle_intro);
	       }
	       if (!audio_is_playing(msc_main) && !argument0) {
	          audio_play_sound(msc_main,0,1);
	       }
	       switch (argument0) {
	              case true:
              
	              //Text
	              if (option !=0) {
	               draw_text(xx,yy[0],string_hash_to_newline(text[0]));
	              }
	              if (option !=1) {
	               draw_text(xx,yy[1],string_hash_to_newline(text[1]));
	              }
	              if (option !=2) {
	                 draw_text(xx,yy[2],string_hash_to_newline(text[2]));
	              }
	              if (option !=3) {
	                 draw_text(xx,yy[3],string_hash_to_newline(text[3]));
	              }
	              if (option !=4) {
	                 draw_text(xx,yy[4],string_hash_to_newline(text[4]));
	              }
              
	              maxOption = 4;
	              break;
   
	              default:
	              draw_set_font(fntTitle);
	              draw_set_colour(make_colour_rgb(237,45,80));
	              //draw_text(160,30,"Monster Tower");
	              draw_text(120,10,string_hash_to_newline("Bit Cruncher"));
	              draw_set_font(fntPixelLife);
	              draw_set_colour(c_ltgray);
	              xx = 120;
	              //Text
	              if (option !=0) {
	                 draw_text(xx,yy[0],string_hash_to_newline(text[0]));
	              }
	              if (option !=1) {
	                 draw_text(xx,yy[1],string_hash_to_newline(text[1]));
	              }
	              if (option !=2) {
	                 draw_text(xx,yy[2],string_hash_to_newline(text[2]));
	              }
	              if (option !=3) {
	                 draw_text(xx,yy[3],string_hash_to_newline(text[3]));
	              }
              
	              maxOption = 3;
              
	              //Select fix
	              if (instance_exists(obj_race_selection_1)) {
	                 with (obj_race_selection_1) {
	                      instance_destroy();
	                 }
	              }
       
	              if (instance_exists(obj_race_selection_2)) {
	                 with (obj_race_selection_2) {
	                      instance_destroy();
	                 }
	              }
	              break;
	       }
	       //Select
	       scale = clamp(scale,1,1.2);
	       if (scale == 1.2) {
	          up = false;
	       } else if (scale == 1) {
	         up = true;
	       }

	       if (up) {
	          scale +=0.01;
	       } else {
	          scale -=0.01;
	       }


	       if ((!up_key[0] || !up_key[1] || !up_key[KEYBOARD] ||  !down_key[0] || !down_key[1] || !down_key[KEYBOARD]) && alarm[0] <= room_speed*.1) {
	       draw_text_transformed_colour(xx+1,yy[option],string_hash_to_newline(text[option]),scale,scale,0,make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),1);
	       } else {
	         draw_text_colour(xx,yy[option],string_hash_to_newline(text[option]),make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),1);
	       }
	       switch (option) {
          
	              case 0: 
	              if ((enter[0] || enter[1] || enter[KEYBOARD]) && alarm[1]<=0) { 
	                 switch (argument0) {
                 
	                        case true:
	                        surface_free(surf_pause); 
	                        draw_enable_alphablend(true);   
	                        /*with (obj_camera) {
	                             instance_destroy();
	                        }*/
	                        instance_activate_all();
	                        instance_destroy();
	                        break;
                 
	                        case false:
	                        menu_index = MENU_NEW_GAME;
	                        break;
	                 }
	              }
	              break; 
              
                  
	              case 1:
	              if (enter[0] || enter[1] || enter[KEYBOARD]){
	                 menu_index = MENU_SETTINGS;
	                 //option -= 1; //Restart option
	              }
	              break;
          
	              case 2:
	              if ((enter[0] || enter[1] || enter[KEYBOARD]) & !instance_exists(obj_controls)){
	                 instance_create(0,0,obj_controls);
	              } 
          
	              if (back[0] || back[1] || enter[KEYBOARD]) {
	                 with (obj_controls) {
	                 instance_destroy();
	                 }
	              }
	              break;
          
	              case 3:
	              if (enter[0] || enter[1] || enter[KEYBOARD]){
	                 switch (argument0) {
             
	                        case false:
	                        room_persistent = false;
	                        game_end();
	                        break;
             
	                        default:
	                        room_persistent = false;
	                        /*with (obj_camera) {
	                             instance_destroy();
	                        }*/
	                        scr_save_game();
	                        instance_destroy();
	                        game_restart();
	                        break;
	                 } 
	             }
	             break;
          
	             case 4:
	             if (enter[0] || enter[1] || enter[KEYBOARD]){
	                room_persistent = false;
	                game_end();
	             }
	             break;
	       }
	       break;
   
	       case MENU_SETTINGS:
       
	            maxOption = 5;
	            if (back[0] || back[1] || back[KEYBOARD]) {
	               menu_index = MENU_STANDARD;
	               option = 1;
	            }
	            //Text
	            draw_text(xxxx,yyyy[0],string_hash_to_newline(text_options[0]));
	            draw_text(xxxx,yyyy[1],string_hash_to_newline(text_options[1]));
	            draw_text(xxxx,yyyy[2],string_hash_to_newline(text_options[2]));
	            draw_text(xxxx,yyyy[3],string_hash_to_newline(text_options[3]));
	            draw_text(xxxx,yyyy[4],string_hash_to_newline(text_options[4]));
	            draw_text(xxxx,yyyy[5],string_hash_to_newline(text_options[5]));
            
	            //Select
	            if ((!up_key[0] || !up_key[1] || !up_key[KEYBOARD] || !down_key[0] || !down_key[1] || !down_key[KEYBOARD]) && alarm[0] <= room_speed*.1) {
	               draw_text_colour(xxxx+1,yyyy[option]-1,string_hash_to_newline(text_options[option]),make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),1);
	            } else {
	              draw_text_colour(xxxx,yyyy[option],string_hash_to_newline(text_options[option]),make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),1);
	            }
            
	            //Option selection
	            draw_text(xxx,yyyy[0],string_hash_to_newline(string(global.width) + "x" + string(global.height)));
	            draw_text(xxx,yyyy[1],string_hash_to_newline(fullscreen[global.fullscreen]));
	            draw_text(xxx,yyyy[2],string_hash_to_newline(vsync[global.vsync]));
	            draw_text(xxx,yyyy[4],string_hash_to_newline(vibration[global.vibration]));
	            //Volume var
	            draw_sprite(spr_volume_bar,global.audio*10,vol_x,vol_y); 
            
           
            
	       switch (option) {
              
	              case 0:
              
	              if (alarm[2]<=0) {
	                 if (right_key[0] || right_key[1] || right_key[KEYBOARD]){
	                    if (global.resolution < 6) { 
	                       alarm[2] = room_speed*0.25;
	                       global.resolution+= 1;
	                       instance_create(x,y,apply_screen_settings);
	                    }
	                 }
	                 if (left_key[0] || left_key[1] || left_key[KEYBOARD]) {   
	                    if (global.resolution > 0) { 
	                       alarm[2] = room_speed*0.25;
	                       global.resolution-= 1;
	                       instance_create(x,y,apply_screen_settings);
	                    }
	                 }
	              }
	              break;
           
	              case 1:
	              if (alarm[2]<=0) {
	                 if (max(left_key[0],left_key[1],left_key[KEYBOARD],right_key[0],right_key[1],right_key[KEYBOARD])){
	                    alarm[2] = room_speed*0.25;
	                    global.fullscreen = !global.fullscreen;
	                    instance_create(x,y,apply_screen_settings);
	                 }
	              }
	              break;
           
	              case 2:
	              if (alarm[2]<=0) {
	                 if (max(left_key[0],left_key[1],left_key[KEYBOARD],right_key[0],right_key[1],right_key[KEYBOARD])) {
	                    alarm[2] = room_speed*0.25;
	                    global.vsync = !global.vsync;
	                    instance_create(x,y,apply_screen_settings);
	                 }
	              }
	              break;
           
	              case 3:
	              if (alarm[4] <= 0) {
	              if (right_key[0] || right_key[1] || right_key[KEYBOARD]){
	                 if (global.audio < 1) { 
	                    alarm[4] = room_speed*.2;
	                    global.audio += 0.1;
	                    audio_master_gain(global.audio);
	                 }
	              }
	              if (left_key[0] || left_key[1] || left_key[KEYBOARD]) {   
	                 if (global.audio >= 0) { 
	                    alarm[4] = room_speed*.2;
	                    global.audio -= 0.1;
	                    audio_master_gain(global.audio);
	                 }
	              } 
	              }
	              break;
           
	              case 4:
	              if (alarm[2]<=0) {
	                 if (max(left_key[0],left_key[1],left_key[KEYBOARD],right_key[0],right_key[1],right_key[KEYBOARD])) {
	                    alarm[2] = room_speed*0.25;
	                    global.vibration = !global.vibration;
	                    if (global.vibration) {
	                      gamepad_set_vibration(0,.5,.5);
	                      alarm[6]= room_speed*.25;
	                    }
	                 }
	              }
	              break;
           
	              case 5:
	              if (enter[0] || enter[1] || enter[KEYBOARD]) {
	                 menu_index = MENU_STANDARD;
	                 option = 0;
	              }
	              break;
	       }
	       break;
	    case MENU_NEW_GAME:
       
	       maxOption = 1;
	       draw_sprite_ext(spr_char_selection,0,45,30,image_xscale,image_yscale, image_angle, image_blend,0.85);
	       draw_sprite_ext(spr_char_selection,0,160,30,image_xscale,image_yscale, image_angle, image_blend,0.85);
	       //Player Indicators
	       draw_sprite(spr_p1,0,70,0);
	       draw_sprite(spr_p2,0,190,0);
	       if (alarm[2] <=0) {
	          alarm[2]= room_speed*.4;
	       } 
	       if (blink) {
	          if (!character_selection[0]) {
	             draw_text(70,60,string_hash_to_newline("Press A"));
	          }
	          if (!character_selection[1]) {
	             draw_text(185,60,string_hash_to_newline("Press A"));
	          }
	       }
       
       
	       //Player 1
	       switch (character_selection[0]) {
              
	              case false: 
	              //Detect device
	              if (enter[GAMEPAD_1] && global.input[2] != GAMEPAD_1) {
	                 global.input[1] = GAMEPAD_1;
	                 character_selection[0] = true;
	              } else if (enter[GAMEPAD_2] && global.input[2] != GAMEPAD_2) {
	                 global.input[1] = GAMEPAD_2;
	                 character_selection[0] = true;
	              } else if (enter[KEYBOARD] && global.input[2] != KEYBOARD) {
	                 global.input[1] = KEYBOARD;
	                 character_selection[0] = true;
	              } else if (back[GAMEPAD_1] || back[GAMEPAD_2] || back[KEYBOARD]) {
	                 menu_index = MENU_STANDARD;
	              } 
	              break;
              
	              case true:
	              if (!instance_exists(obj_race_selection_1)) {
	                 instance_create(70,87,obj_race_selection_1);
	              }
	              switch (char_option[0]) {
                     
	                     case 0:
	                     //draw_text(87,90,"Ready");
	                     global.races[0] = 0;
	                     with (obj_race_selection_1) {
	                          sprite_index = spr_player1;
	                     } 
	                     break;
	                     /*case 1: draw_text(87,90,"Goblin");
	                     global.races[0] = 1;
	                     with (obj_race_selection_1) {
	                          sprite_index = spr_player2;
	                     } 
	                     break;*/
	                     /*case 2: draw_text(87,90,"green");
	                     global.races[0] = 2;
	                     with (obj_race_selection_1) {
	                          sprite_index = spr_goblin; 
	                     }
	                     break;*/
	              }
	              if (enter[global.input[1]]) { 
	                 audio_play_sound(snd_acept,1,0);
	                 global.ready[0] = true;
	                 if (global.ready[1] && alarm[1] <= 0) {
	                       instance_create(x,y,obj_fade);
	                       //Stop control
	                       alarm[1] = 200;
	                       alarm[0] = 200;
	                      }
	                 }
	                 if (global.ready[0]) {
	                    draw_text(68,100,string_hash_to_newline("Ready"));
	                 }
               
	              if (back[global.input[1]]) {
	                 global.ready[0] = false;
	                 character_selection[0] = false;
	                 global.input[1] = noone;
	                 with (obj_race_selection_1) {
	                         instance_destroy();
	                 }
	              }
	              break;
	       }
       
	       //Player 2
	       switch (character_selection[1]) {
              
	              case false: 
	              //Detect device
	              if (enter[GAMEPAD_1] && global.input[1] != GAMEPAD_1) {
	                 global.input[2] = GAMEPAD_1;
	                 character_selection[1] = true;
	              } else if (enter[GAMEPAD_2] && global.input[1] != GAMEPAD_2) {
	                 global.input[2] = GAMEPAD_2;
	                 character_selection[1] = true;
	              } else if (enter[KEYBOARD] && global.input[1] != KEYBOARD) {
	                 global.input[2] = KEYBOARD;
	                 character_selection[1] = true;
	              } else if (back[GAMEPAD_1] || back[GAMEPAD_2] || back[KEYBOARD]) {
	                 menu_index = MENU_STANDARD;
	              }    
	              break;
              
	              case true:
	              if (!instance_exists(obj_race_selection_2)) {
	                 instance_create(185,87,obj_race_selection_2);
	              }
	              switch (char_option[1]) {
                     
	                     case 0:
	                     global.races[1] = 0;
	                     //draw_text(230,90,"Blue");
	                     with (obj_race_selection_2) {
	                          sprite_index = spr_player2;
	                     } 
	                     break;
	                     /*
	                     case 1: 
	                     global.races[1] = 1;
	                     draw_text(230,90,"Goblin");
	                     with (obj_race_selection_2) {
	                          sprite_index = spr_goblin;
	                     } 
	                     break;*/
                     
	                     /*case 2: 
	                     global.races[1] = 2;
	                     if (global.races[1] == 2) {
	                        draw_text(230,90,"green");
	                        with (obj_race_selection_2) {
	                             sprite_index = spr_goblin;
	                        } 
	                     }
	                     break;*/
	              }
	              if (enter[global.input[2]]) { 
	                 global.ready[1] = true;
	                 audio_play_sound(snd_acept,1,0);
	                 if ( global.ready[0] && alarm[1] <= 0) {
	                       instance_create(x,y,obj_fade);
	                       //Stop control
	                       alarm[1] = 200;
	                       alarm[0] = 200;
	                      }
	                 }
	                 if (global.ready[1]) {
	                    draw_text(188,100,string_hash_to_newline("Ready"));
	                 }
               
	              if (back[global.input[2]]) {
	                 global.ready[1] = false;
	                 character_selection[1] = false;
	                 global.input[2] = noone;
	                 with (obj_race_selection_2) {
	                         instance_destroy();
	                 }
	              }
	              break;
	       }
	       break;
	}
 




}
