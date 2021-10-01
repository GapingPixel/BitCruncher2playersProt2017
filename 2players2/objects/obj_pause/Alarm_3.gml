/// @description Sheck surface
surface_set_target(surf_pause);
draw_enable_alphablend(false);
draw_clear_alpha(c_black, 0);
if (surface_exists(application_surface)){
   draw_surface(application_surface,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ));
}
draw_enable_alphablend(true);
surface_reset_target();
instance_deactivate_all(true);



