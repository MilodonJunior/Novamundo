/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
cam = view_camera[0];

treshold = 100;

if instance_exists(oPlayer) {	
	move_towards_point(oPlayer.x, oPlayer.y, 2);
}