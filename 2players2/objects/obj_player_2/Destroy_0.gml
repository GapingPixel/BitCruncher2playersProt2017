/// @description Lifes
obj_stats.lifes2 -= 1;
if (obj_stats.lifes2 = 0) {
   with (instance_create(x,y,obj_end)) {
        winner = "Red";
   }
   with (obj_player) {
        depth = -5;
   }
} else {
  with (obj_tel) {
       alarm[1] = room_speed*3;
  }
}

