#region Movement
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
#endregion

#region Limits
if(x >= 450)
{
	x = 450;
}
else if(x <= 50)
{
	x = 50;
}

if(y <= 120)
{
	y = 120;
}
else if(y >= 680)
{
	y = 680;
}
#endregion

if(keyboard_check_pressed(vk_space))
{
    instantiate_Action = scrp_instantiate;
	alarm[1] = alarm_bullet;
}