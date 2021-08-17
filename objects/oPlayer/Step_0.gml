//Player Inputs

keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
//keyUp = keyboard_check(ord("W"));
//keyDown = keyboard_check(ord("S"));

//Future Keyboard Use

keyActivate = keyboard_check_pressed(ord("E"));
mouseAttack = mouse_check_button(mb_left);
mouseHAttack = mouse_check_button(mb_right);

//Player Input

hSpeed = (keyboard_check(ord("A"))) - (keyboard_check(ord("D")));
hSpeed *= speedWalk;

// movement

x -= hSpeed;

