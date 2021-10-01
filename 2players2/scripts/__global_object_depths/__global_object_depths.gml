function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // class_solid
	global.__objectDepths[1] = 0; // obj_des
	global.__objectDepths[2] = 0; // class_damage
	global.__objectDepths[3] = 0; // class_player
	global.__objectDepths[4] = 0; // obj_player
	global.__objectDepths[5] = 0; // obj_player_2
	global.__objectDepths[6] = -1; // obj_fire
	global.__objectDepths[7] = 0; // obj_sword
	global.__objectDepths[8] = 0; // obj_tel
	global.__objectDepths[9] = 0; // obj_stats
	global.__objectDepths[10] = -2; // obj_end
	global.__objectDepths[11] = 0; // obj_bullet
	global.__objectDepths[12] = 0; // obj_system
	global.__objectDepths[13] = 0; // apply_screen_settings
	global.__objectDepths[14] = -10; // obj_menu
	global.__objectDepths[15] = -50; // obj_pause
	global.__objectDepths[16] = -9; // obj_intro
	global.__objectDepths[17] = -9999; // obj_fade
	global.__objectDepths[18] = -9999; // obj_fade_start
	global.__objectDepths[19] = -50; // obj_race_selection_1
	global.__objectDepths[20] = -50; // obj_race_selection_2
	global.__objectDepths[21] = -9999; // obj_fade_out_game_end
	global.__objectDepths[22] = -999; // obj_controls
	global.__objectDepths[23] = 0; // obj_particle_splatter


	global.__objectNames[0] = "class_solid";
	global.__objectNames[1] = "obj_des";
	global.__objectNames[2] = "class_damage";
	global.__objectNames[3] = "class_player";
	global.__objectNames[4] = "obj_player";
	global.__objectNames[5] = "obj_player_2";
	global.__objectNames[6] = "obj_fire";
	global.__objectNames[7] = "obj_sword";
	global.__objectNames[8] = "obj_tel";
	global.__objectNames[9] = "obj_stats";
	global.__objectNames[10] = "obj_end";
	global.__objectNames[11] = "obj_bullet";
	global.__objectNames[12] = "obj_system";
	global.__objectNames[13] = "apply_screen_settings";
	global.__objectNames[14] = "obj_menu";
	global.__objectNames[15] = "obj_pause";
	global.__objectNames[16] = "obj_intro";
	global.__objectNames[17] = "obj_fade";
	global.__objectNames[18] = "obj_fade_start";
	global.__objectNames[19] = "obj_race_selection_1";
	global.__objectNames[20] = "obj_race_selection_2";
	global.__objectNames[21] = "obj_fade_out_game_end";
	global.__objectNames[22] = "obj_controls";
	global.__objectNames[23] = "obj_particle_splatter";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
