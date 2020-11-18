/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
distance = distance_to_object(oPlayer);

if (distance < 400)
{
	move_towards_point(oPlayer.x, oPlayer.y, 3);
}