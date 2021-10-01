/// @description scr_load_game
function scr_load_game() {
	//gml_pragma("forceinline");
	ini_open("save.ini");

	//Data
	global.resolution = ini_read_real("settings","resolution",obj_system.default_res);
	global.fullscreen = ini_read_real("settings","fullscreen",1);
	global.vsync = ini_read_real("settings","vsync",1);
	global.audio = ini_read_real("settings","audio",1);
	global.vibration = ini_read_real("settings","vibration",1);
	global.width = 0;
	global.height = 0;
	ini_close();
	global.pad[0] = noone;
	global.pad[1] = noone;
	//global.pad[1] = noone;




}
