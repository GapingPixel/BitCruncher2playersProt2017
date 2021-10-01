/// @description Draw effects surface
/*if (instance_exists(obj_camera)) {
   if (surface_exists(debris_surf)) {
      draw_surface(debris_surf,x,y);
      if (instance_exists(class_debris)) {
         surface_set_target(debris_surf);
         with (class_debris) {
              if (speed <= 0 && animation_end) {
                 draw_sprite_ext(sprite_index,image_number-1,x,y,image_xscale,image_yscale,image_alpha,image_blend,image_alpha);
                 instance_destroy();
              }
         }
         surface_reset_target();
      }
   } else {
   debris_surf = surface_create(room_width, room_height);
   }
}

//show_debug_overlay(true);


/* */
/*  */
