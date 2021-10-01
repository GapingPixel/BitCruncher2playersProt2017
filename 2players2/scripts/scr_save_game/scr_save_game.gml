/// @description scr_save_game
function scr_save_game() {
	//gml_pragma("forceinline");
	ini_open("save.ini");
	ini_write_real("settings","resolution", global.resolution);
	ini_write_real("settings","fullscreen", global.fullscreen);
	ini_write_real("settings","vsync", global.vsync);
	ini_write_real("settings","audio", global.audio);
	ini_write_real("settings","vibration", global.vibration);
	ini_close();



}
