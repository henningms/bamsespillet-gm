/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(vk_left)) {
	direction = 180;
}
if (keyboard_check(vk_right)) {
	direction = 0;
}

if (keyboard_check(vk_up)) {
	direction = 90;
}

if (keyboard_check(vk_down)) {
	direction = 270;
}


if (x <= 0) {
	direction = 0;
	speed = speed * speed_increment;
}
else if (x >= room_width) {
	direction = 180;
	speed = speed * speed_increment;
}

if (y <= 0) {
	direction = 270;
	speed = speed * speed_increment;
} else if (y >= room_height) {
	direction = 90;
	speed = speed * speed_increment;
}