if(keyboard_check_pressed(vk_right))
{
	x += grid_width
}
if(keyboard_check_pressed(vk_up))
{
	y -= grid_height
}
if(keyboard_check_pressed(vk_down))
{
	y += grid_height
}
if(keyboard_check_pressed(vk_left))
{
	x -= grid_width
}

if(keyboard_check_pressed(ord("A")))
{
	x -= grid_width
	y += grid_height
}
if(keyboard_check_pressed(ord("Q")))
{
	x -= grid_width
	y -= grid_height
}
if(keyboard_check_pressed(ord("E")))
{
	x += grid_width
	y -= grid_height
}
if(keyboard_check_pressed(ord("D")))
{
	x += grid_width
	y += grid_height
}