/// @description Insert description here
// You can write your code in this editor

draw_self();

if (is_victory) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_text(room_width/2, room_height/2, "VICTORY!!");
	draw_text(room_width/2, room_height/2+50, "U PEOPLES URZ GOOD!");
} else if (is_dead) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_text(room_width/2, room_height/2, "GAME OVER!");
	draw_text(room_width/2, room_height/2+50, "PRESS R OR SELECT TO RESTART");
} else {
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text(20,20, "TRY NOT TO HIT THE WALLS!");
}