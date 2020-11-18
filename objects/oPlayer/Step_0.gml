/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

k_left = keyboard_check(vk_left);
k_right = keyboard_check(vk_right);
k_up = keyboard_check(vk_up);
k_down = keyboard_check(vk_down);

k_space = keyboard_check_pressed(vk_space);

if(k_left)
{
	image_xscale = -1;
	x = x-5;
}
else if(k_right)
{
	image_xscale = 1;	
	x = x+5;
}

if(k_up)
{
	y = y-5;
}
else if(k_down)
{
	y = y+5;
}

if(k_space)
{
	var bullet = instance_create_depth(x, y, 0, oBullet);
	bullet.image_xscale = image_xscale;
	bullet.speed = 10*image_xscale;
}