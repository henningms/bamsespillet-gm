/// @description Insert description here
// You can write your code in this editor

if (room == Room1) {
	if (keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(0, gp_select))
	{
		paused = !paused;
		
		if (paused == false) {
			instance_activate_all();
			surface_free(paused_surf);
			paused_surf = -1;
		} 
	}
	
	if (keyboard_check_pressed(ord("R")) || gamepad_button_check_pressed(0, gp_start)) {
		room_restart();
		score = 0;
	}
	
	if (paused == true) {
		alarm[0]++;
		alarm[1]++;
	}
}