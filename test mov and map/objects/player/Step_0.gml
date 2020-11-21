/// @description Inserte aquí la descripción

#region //gravedad
if place_free(x,y+1)
{
	gravity = 1;
	
}
else
{
	//gravity = 0;
	k_a = true;
}


//limite de la gravedad de la forma vertical
if vspeed>=20
{
	vspeed=20;	
}
#endregion

#region// teclas de movimineto

globalvar k_w;
var k_d = keyboard_check(ord("D"));
var k_a = keyboard_check(ord("A"));
k_w = keyboard_check_pressed(ord("W"));


//salto a partir del nivel 2

if(salto_doble<2 /*and room = Room3*/)
{
	if(k_w)
	{
	salto_doble += 1;
	vspeed = -salto;
	}
}
if(salto_doble=2)
{
	if (!place_free(x, y+1) and k_d)
	{
		vspeed = -salto;
	}
}


//movimientos del player

if(k_d and !place_meeting(x+15, y, opiso))
{
	x += v;  
	sprite_index = PD;
}
if(k_a /*and !instance_place(x-15, y, opiso)*/)
{
	
	if( instance_place(x - 1,y,opiso))
	{
		show_debug_message("aqui voy");
		sprite_index=a;
		gravity=0.5;
		if(k_w)
		{
			vspeed= -salto;
			player.x = player.x+30;
		}

	}	
	else
	{
		x -= v;  
		sprite_index=PI;	
	}
	
}



//cuando el personaje este queto el personaje mirara hacia adelante
 if((keyboard_check(ord("D"))=false) and (keyboard_check(ord("A"))=false))
{
 sprite_index=k;	
}
#endregion 



#region//salto del personaje hacia la pared(video profe pablo)

/*if(gravity > 0 and k_a and instance_place(x - 1,y,opiso) != noone)
{
  gravity=0.5;
  if(k_w)
  {
	velocidad_x = -10;
	velocidad_y = -15;
  }
}*/
#endregion

 
