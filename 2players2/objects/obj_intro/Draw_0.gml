/// @description Fade && Background
if (instance_exists(obj_menu)) {
   instance_destroy();
} 

draw_background(background[i],0,0);

if (next == true) {
   if (a == 1) {
      if (i!= max_i) {
         i++;
      } else {
        instance_create(room_width/2,room_height/1.3,obj_menu);
      }
      fade = -1;
   }
}
///Restart
if (a <= 0) && (fade == -1) {
   a = 0;
   fade = 1;
   next = false;
}

if (a == 1) {
   next = true;
   fadeSpeed = normal;
}
///Fade
a = clamp(a +(fade * fadeSpeed),0,1);
draw_set_color(c_black);
draw_set_alpha(a);
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),0);
draw_set_alpha(1);



