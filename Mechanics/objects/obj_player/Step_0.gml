if(keyboard_check_pressed(vk_right))
{
	input = move_right;
	alarm[0] = alarm_interval;
}
if(keyboard_check_pressed(vk_up))
{
	input = move_up;
	alarm[0] = alarm_interval;
}
if(keyboard_check_pressed(vk_down))
{
	input = move_down;
	alarm[0] = alarm_interval;
}
if(keyboard_check_pressed(vk_left))
{
	input = move_left;
	alarm[0] = alarm_interval;
}