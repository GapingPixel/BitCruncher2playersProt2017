/// @description Respawn
if (!instance_exists(obj_end)) {
   instance_create(x,y,obj_player);
   audio_play_sound(snd_respawn,1,0);
}

