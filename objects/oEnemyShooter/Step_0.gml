/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(oPlayer.x < x)
{
	image_xscale = -1;
}
else
{
	image_xscale = 1;
}


distance = distance_to_object(oPlayer);

if (distance < 300)
{
	time = current_time;
	if(time - last_bullet_time > 500)
	{	
		var bulllet = instance_create_depth(x, y, 0, oEBullet);
		bulllet.speed = 10;
		last_bullet_time = time;
	}
}