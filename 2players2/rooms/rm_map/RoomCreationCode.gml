/// @description Audio
audio_stop_sound(msc_main);
audio_play_sound(snd_battle_loop,3,1);

/*switch (global.races[0]) {
  
          case 0:
          with (instance_create(300,320,obj_astro1)) {
               device = global.input[1]; 
               player_index = 1;
               global.player[1] = id;
          }
          break;
  
        
}
   
  switch (global.races[1]) {
  
          case 0:
          with (instance_create(300,360,obj_astro2)) {
               device = global.input[2]; 
               player_index = 2;
               global.player[2] = id;
          }
          break;
  
}