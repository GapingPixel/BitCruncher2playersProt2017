/// @description scr_get_input_player(player,device);
/// @param player
/// @param device
function scr_input(argument0, argument1) {
	//gml_pragma("forceinline");
	var player = argument0;
	var device = argument1;

	//Player2
	if (player) {
	key[1,9] = vk_backspace;
	key[1,8] = (ord("L"));
	key[1,7] = (ord("P"));
	key[1,6] = vk_rshift;
	key[1,5] = vk_shift;
	key[1,4] = vk_down;
	key[1,3] = vk_up;
	key[1,2] = vk_left;
	key[1,1] = vk_right;
	} else {
	//Player1
	key[0,9] = vk_enter;
	key[0,8] = (ord("Q"));
	key[0,7] = vk_tab;
	key[0,6] = vk_space;
	key[0,5] = vk_shift;
	key[0,4] = (ord("S"));
	key[0,3] = (ord("W"));
	key[0,2] = (ord("A"));
	key[0,1] = (ord("D"));
	}

	right = max(keyboard_check(key[argument0,1]),gamepad_button_check(device,gp_padr));
	left = min(-keyboard_check(key[argument0,2]),-gamepad_button_check(device,gp_padl)); 
	down = max(keyboard_check(key[argument0,4]),gamepad_axis_value(device, gp_axislv)< 0);
	jump = max(keyboard_check(key[argument0,3]),gamepad_button_check_pressed(device, gp_face1));
	jump_release = max(gamepad_button_check_released(device, gp_face1),keyboard_check_pressed(key[argument0,5]));
	attack_key = max(gamepad_button_check_pressed(device, gp_face3),keyboard_check_pressed(key[argument0,6]));
	hold_press_attack = max(gamepad_button_check(device, gp_face3),keyboard_check(key[argument0,6]));
	switch_weapon = max(gamepad_button_check_pressed(device, gp_face4),keyboard_check_pressed(key[argument0,7]));
	use_weapon = max(gamepad_button_check(device,gp_shoulderrb),keyboard_check(key[argument0,8]));
	start = max(gamepad_button_check_pressed(device,gp_start),keyboard_check_pressed(key[argument0,9]));




}
