/// @description Lifes
obj_stats.lifes -= 1;
if (obj_stats.lifes = 0) {
   with (instance_create(x,y,obj_end)) {
        winner = "Blue";
   }
   with (obj_player_2) {
        depth = -5;
   }
} else {
  with (obj_tel) {
       alarm[0] = room_speed*3;
  }
}

