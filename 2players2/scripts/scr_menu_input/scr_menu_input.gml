/// @description scr_menu_input
function scr_menu_input() {
	//gml_pragma("forceinline");
	//Keyboard
	up_key[KEYBOARD] = max(keyboard_check(ord("W")),keyboard_check(vk_up));
	down_key[KEYBOARD] = max(keyboard_check(ord("S")),keyboard_check(vk_down));
	right_key[KEYBOARD] = max(keyboard_check(ord("D")),keyboard_check(vk_down));
	left_key[KEYBOARD] = max(keyboard_check(ord("A")),keyboard_check(vk_down));
	enter[KEYBOARD] = max(keyboard_check_released(vk_enter));
	back[KEYBOARD] = max(keyboard_check_released(vk_escape));

	//Gamepads
	var pad1 = global.pad[0];

	up_key[0] = gamepad_axis_value(pad1, gp_axislv) < 0;
	down_key[0] = gamepad_axis_value(pad1, gp_axislv) > 0;
	right_key[0] = gamepad_axis_value(pad1, gp_axislh) > 0;
	left_key[0] = gamepad_axis_value(pad1, gp_axislh) < 0;
	enter[0] = gamepad_button_check_released(pad1, gp_face1);
	back[0] = gamepad_button_check_released(pad1, gp_face2);

	var pad2 = global.pad[1];

	up_key[1] = gamepad_axis_value(pad2, gp_axislv) < 0;
	down_key[1] = gamepad_axis_value(pad2, gp_axislv) > 0;
	right_key[1] = gamepad_axis_value(pad2, gp_axislh) > 0;
	left_key[1] = gamepad_axis_value(pad2, gp_axislh) < 0;
	enter[1] = max(gamepad_button_check_released(pad2, gp_face1),keyboard_check_pressed(vk_rshift));
	back[1] = gamepad_button_check_released(pad2, gp_face2);



}
