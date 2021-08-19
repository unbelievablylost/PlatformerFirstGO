//Set position for obj gun

x = oPlayer.x + 3;
y = oPlayer.y + 5;

//no longer has to be in begin step.

//Point gun

image_angle = point_direction(x,y,mouse_x,mouse_y);

//shooting

firingdelay = firingdelay - 1;

recoil = max (0,recoil - 1);

if (mouse_check_button(mb_left)) and (firingdelay < 0)
{
	recoil = 6;
	firingdelay = 5;
	with (instance_create_layer(x,y,"Bullets",oBullet))
	{
		speed = 25;
		direction = other.image_angle + random_range (-3,3);
		image_angle = direction;
	}
	
}

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

if (image_angle > 90) and (image_angle < 270)
{
	image_yscale = -1;
	
}
else
{
	image_yscale = 1;	
}