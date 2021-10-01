/// @description Pause menu
if (global.ready[1] && global.ready[0]) {
   exit;
}
if(surface_exists(surf_pause)){
    draw_enable_alphablend(false);
    draw_surface(surf_pause,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ));
    draw_background(pause_background,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ));
    draw_enable_alphablend(true);
} else {
    surf_pause = surface_create(__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
    alarm[3] = 1;
}

//Draw semitransparent square
var c_last = draw_get_color();
draw_set_color(c_black);
draw_set_alpha(0.6);
draw_rectangle(__view_get( e__VW.XView, 0 )-__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )-__view_get( e__VW.HView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )*2,false);
draw_set_alpha(1);
draw_set_color(c_last);

scr_menu_options(true);

