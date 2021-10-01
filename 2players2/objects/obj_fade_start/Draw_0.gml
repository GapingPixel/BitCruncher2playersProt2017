/// @description Fade
a = clamp(a +(fade * 0.015),0,1);
 
if (a == 1){
    fade = -1;
}

if (a == 0) && (fade == -1){
    instance_destroy();
}

draw_set_color(c_black);
draw_set_alpha(a);
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),0);
draw_set_alpha(1);



