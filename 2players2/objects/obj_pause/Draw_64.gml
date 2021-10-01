/// @description Draw the surface
if !(global.ready[1] && global.ready[0]) {
   exit;
}
display_set_gui_size(240, 135);
if(surface_exists(surf_pause)){
    draw_enable_alphablend(false);
    //draw_surface(surf_pause,view_xview,view_yview);
    draw_surface(surf_pause,0,0);
    //draw_background(pause_background,view_xview,view_yview);
    draw_background(pause_background,0,0);
    draw_enable_alphablend(true);
} else {
    surf_pause = surface_create(__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
    alarm[3] = 1;
}

//Draw semitransparent square
var c_last = draw_get_color();
draw_set_color(c_black);
draw_set_alpha(0.6);
//draw_rectangle(view_xview-view_wview,view_yview-view_hview,view_xview+view_wview*2,view_yview+view_hview*2,false);
draw_rectangle(0-display_get_gui_width(),0-display_get_gui_height(),0+display_get_gui_width(),0+display_get_gui_height(),false);
draw_set_alpha(1);
draw_set_color(c_last);

scr_menu_options(true);

