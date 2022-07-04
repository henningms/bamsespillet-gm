/// @description Insert description here
// You can write your code in this editor

direction = 270;
speed = 12;

is_dead = false;
is_victory = false;
is_wall_cooldown = false;

function increment_speed()
{
	if (speed > 100) {
		speed += 13;
	} else if (speed > 50) {
		speed += 7;
	} else {
		speed += 2;
	}
}

function change_sprite()
{
	if (global.is_tord) {
		sprite_index = spr_tord;
	} else {
		sprite_index = teddy_sprite;
	}
}