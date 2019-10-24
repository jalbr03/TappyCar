var isUpPressed = keyboard_check(vk_up);
var isDnPressed = keyboard_check(vk_down);
var isLtPressed = keyboard_check(vk_left);
var isRtPressed = keyboard_check(vk_right);
var isdash = keyboard_check(vk_space);
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

if(isdash){
	move_towards_point(mouse_x,mouse_y,20);
	if(alarm[1] == -1) alarm[1] = 5;
}