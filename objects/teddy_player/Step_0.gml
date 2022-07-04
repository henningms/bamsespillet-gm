/// @description Insert description here
// You can write your code in this editor

if (!is_dead && !is_victory) {
	if (keyboard_check_pressed(vk_left) || gamepad_button_check_pressed(0, gp_padl)) {
		direction = 180;
	}
	if (keyboard_check_pressed(vk_right) || gamepad_button_check_pressed(0, gp_padr) ) {
		direction = 0;
	}

	if (keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0, gp_padu)) {
		direction = 90;
	}

	if (keyboard_check_pressed(vk_down) || gamepad_button_check_pressed(0, gp_padd)) {
		direction = 270;
	}
	
	if (keyboard_check_pressed(ord("T")) || gamepad_button_check_pressed(0, gp_shoulderl)) {
		global.is_tord = !global.is_tord;
	}


	if (x <= 0) {
		direction = 0;
		increment_speed();
	}
	else if (x >= room_width) {
		direction = 180;
		increment_speed();
	}

	if (y <= 0) {
		direction = 270;
		increment_speed();
	} else if (y >= room_height) {
		direction = 90;
		increment_speed();
	}

	if (speed > 200) {
		move_towards_point(-250, 250, speed);
		
		is_dead = true;
	}
}

change_sprite();