/// @description Draw Shader surf
draw_set_font(fntSmallText);
draw_text(35,5,string_hash_to_newline("Early 10h Dev Build"))
//Amount of contrast based on player HP
/*if (!instance_exists(obj_player)) {
   exit;
}
draw_set_color(c_black);
//draw_set_alpha((abs(obj_player.hp/obj_player.maxhp-1)));
//draw_set_alpha(1);
draw_rectangle(view_xview-view_wview,view_yview-view_hview,view_xview+view_wview*2,view_yview+view_hview*2,false);
//draw_rectangle(0,display_get_gui_width(),0,display_get_gui_height(),false)
//draw_rectangle(10,7500,24,7700,false)
draw_set_alpha(1);
/*if instance_exists(obj_player) {
   var_contrast_amount = 0 -obj_player.hp*0.01;
   //(obj_player.maxhp-obj_player.hp)*0.01;
}

if (instance_exists(obj_camera)) {
   if (surface_exists(shader_surf)) {
      if (shader_enabled) { 
         shader_set(shd_bright_contrast);
         shader_set_uniform_f(uni_resolution, var_resolution_x, var_resolution_y);
         shader_set_uniform_f(uni_brightness_amount, var_brightness_amount);
         shader_set_uniform_f(uni_contrast_amount, var_contrast_amount );
         if (full_screen_effect) { 
            draw_surface(surf,0,0);
            shader_reset();
         }
      }
   } else {
   surf = surface_create(view_wview, view_hview);
   view_surface_id[0] = shader_surf;
   }
//draw_text(0,12,"Brightness amount (Q & A to adjust): "+string(var_brightness_amount));
draw_text(0,24,"Contrast amount: "+string(var_contrast_amount));
}

/* */
/*  */
