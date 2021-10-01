/// @description Fade
var spd = 0.0015;
a = clamp(a +(fade * spd),0,1);
if (next = true) && (a >= 0.70){
    room_persistent = false;
    game_restart();
}

draw_set_color(c_black);
draw_set_alpha(a);
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),0);
draw_set_alpha(1);


