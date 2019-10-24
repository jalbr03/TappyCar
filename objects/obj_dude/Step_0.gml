var isUpPressed = keyboard_check(vk_up);
var isDnPressed = keyboard_check(vk_down);
var isLtPressed = keyboard_check(vk_left);
var isRtPressed = keyboard_check(vk_right);
var spd = 3;

if (isUpPressed xor isDnPressed) {
	if (isUpPressed) {
		y -= spd;
	} else if (isDnPressed) {
		y += spd;
	}
}

if (isLtPressed xor isRtPressed) {
	if (isLtPressed) {
		x -= spd;
	} else if (isRtPressed) {
		x += spd;
	}
}

if (place_meeting(x, y, obj_friend)) {
	show_message("You met your friend!");
	x -= 10;
}
