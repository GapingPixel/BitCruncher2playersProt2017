/// @description scr_scaling
function scr_scaling() {
	//gml_pragma("forceinline");
	var base_w = 240;
	var base_h = 135;
	var max_w = global.width;
	var max_h = global.height;
	var aspect =  max_w/max_h;

	switch (aspect) {

	    case (16/10):
	    view_width = base_w;
	    view_height = 200;
	    break;   
    
	    case (4/3):
	    view_width = 240;
	    view_height = base_h;
	    break;
    
	    case (5/3):
	    view_width = 300;
	    view_height = base_h;
	    break;
    
	    default:
	    view_width = base_w;
	    view_height = base_h;
	    offsety = 0;
	    offseth = 0;
	    break;
	}   

	__view_set( e__VW.WView, 0, view_width );
	__view_set( e__VW.HView, 0, view_height );
	__view_set( e__VW.WPort, 0, max_w );
	__view_set( e__VW.HPort, 0, max_h );
	display_set_gui_size(base_w, base_h);

	//Low Quality, Better performance
	//surface_resize(application_surface, min(max_w,base_w), min(max_w,base_w));
	//High Quality, Worse performance
	surface_resize(application_surface, base_w, base_h);

	var i = true;
	var rm = room_next(room);

	while (i){
	room_set_view(rm, 0, true, 0, 0, base_w, base_h, 0, 0, base_w, base_h, 0, 0, -1, -1, -1);
	room_set_view_enabled(rm,true);
	if (rm == room_last){
	    i = false;
	} else {
	    rm = room_next(rm);
	    }
	}



}
