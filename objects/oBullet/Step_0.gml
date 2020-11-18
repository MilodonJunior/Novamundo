x_min = camera_get_view_x(cam);
x_max = x_min + camera_get_view_width(cam);

if(x < x_min - treshold || x > x_max + treshold)
{
	instance_destroy();
}