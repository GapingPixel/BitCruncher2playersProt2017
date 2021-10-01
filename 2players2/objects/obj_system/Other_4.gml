/// @description Add the camera,view,contrast,emitter & effects surface
/*if (!instance_exists(obj_BCP)) {
if (!instance_exists(obj_camera) && (instance_exists(obj_player))) {
   instance_create(0,0,obj_camera);
}

if (instance_exists(obj_camera)) {
   //debris_surf = surface_create(room_width, room_height);
   view_object[0] = obj_camera;
   view_vborder[0] = 270;
   view_hborder[0] = 460;
   view_hspeed[0] = -1;
   view_vspeed[0] = -1;
}
}

if (room != rm_init && !(global.ready[1] && global.ready[0])) {
   instance_create(0,0,obj_contrast);
}

global.part_sys = part_system_create();


/* */
/*  */
