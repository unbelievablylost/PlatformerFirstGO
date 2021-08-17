//Get Player Inputs

key_Left = keyboard_check(ord("A"));
key_Right = keyboard_check(ord("D"));
//keyUp = keyboard_check(ord("W"));
//keyDown = keyboard_check(ord("S"));
key_jump = keyboard_check_pressed(vk_space)
key_Activate = keyboard_check_pressed(ord("E"));
mouse_Attack = mouse_check_button(mb_left);
mouse_H_Attack = mouse_check_button(mb_right);

//Calc Movement

var move = key_Right - key_Left;

hSpeed = move * speedWalk;

//Gravity

vSpeed = vSpeed + grv;

//Jumping

if (place_meeting(x,y+1,oGround)) and (key_jump)
{
	vSpeed = -10;
}

//Horizontal Collision

if (place_meeting(x+hSpeed,y,oGround))
{
	while (!place_meeting(x+sign(hSpeed),y,oGround))
	{
		x = x + sign(hSpeed);
	}
	hSpeed = 0;
}
x = x + hSpeed;

//Vertical Collision

if (place_meeting(x,y+vSpeed,oGround))
{
	while (!place_meeting(x,y+sign(vSpeed),oGround))
	{
		y = y + sign(vSpeed);
	}
	vSpeed = 0;
}
y = y + vSpeed;

//Animaiton

if (!place_meeting(x,y+1,oGround))
{
	sprite_index = sPlayerA;
	image_speed = 0;
}