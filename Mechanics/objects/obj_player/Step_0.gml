#region Movement
if(keyboard_check_pressed(vk_right))
{
	player_action = playerStates.walking;
	input = move_right;
	alarm[0] = alarm_interval;
}
if(keyboard_check_pressed(vk_up))
{
	player_action = playerStates.walking;
	input = move_up;
	alarm[0] = alarm_interval;
}
if(keyboard_check_pressed(vk_down))
{
	player_action = playerStates.walking;
	input = move_down;
	alarm[0] = alarm_interval;
}
if(keyboard_check_pressed(vk_left))
{
	player_action = playerStates.walking;
	input = move_left;
	alarm[0] = alarm_interval;
}
#endregion

#region Limits
if(x >= room_width/2 - 50)//450)
{
	x = room_width/2 - 50;
}
else if(x <= 50)
{
	x = 50;

}

//if(y <= 80)
//{
//	y = 80;
//}
//else if(y >= 620)
//{
//	y = 620;
//}
#endregion

#region Skills

if(keyboard_check_pressed(vk_space))
{
	player_action = playerStates.shooting;
    instantiate_Action = scrp_instantiate;
	alarm[1] = alarm_bullet;
}

if(keyboard_check(vk_shift))
{
	player_action = playerStates.dashing;
	dash_action = scrpt_dash;
	alarm[2] = alarm_dash;
}

#endregion

if(keyboard_check_released(vk_anykey))
	player_action = playerStates.idle;