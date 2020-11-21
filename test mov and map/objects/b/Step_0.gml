/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

var Com = keyboard_check_pressed(ord("X"));
if(Com)
{
	if place_free(x,y+1)
	{
		gravity=0.5;
	}
	else
	{
	gravity=0;
	}
//limite de la gravedad de la forma vertical
	if vspeed>=5
	{
	vspeed=5;	
	}

}




