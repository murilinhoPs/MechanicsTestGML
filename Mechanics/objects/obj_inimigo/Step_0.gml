/// @description enemy AI and stuff

if (vidas <= 0)
	instance_destroy();


	if(state = state.idle)
	{
		if(alarm[0] <= 0)
		{
			x_goal =  (x_range div 100) * 100 + 50;
			y_goal = (y_range div 80) * 80 + 40;
		
			alarm[0] = idle_timer;

	#region Idle Update
	
		if(walking_demand >= 4 || shooting_demand >= 4)
			add_demands = false;
		else if(walking_demand == shooting_demand)
		{
			walking_demand = shooting_demand = 0;
		
			add_demands = true;
		}
		
		if(walking_demand >= 4)
			shooting_demand = 0;
		if(shooting_demand >= 4)
			walking_demand = 0;
		
	#endregion
	
		#region Demandas		
			if(add_demands)
			{
				state = choose(state.walking, state.shooting);
				
				if(state == state.walking)
				{
					walking_demand ++;
				}
			 
			 //Troquei essa parta para adicionar o shooting demand quando 
			 //levar muito tiro do player para daí seu estado ser andando para desviar das balas com mais frequência
				
				//if(state == state.shooting)
				//{
				//	shooting_demand ++;
				//}
		   }
			if(!add_demands)
			{		
				if(walking_demand > shooting_demand)
					{
						state = state.shooting;
						walking_demand --;
					}
				else if(walking_demand < shooting_demand)
					{
						state = state.walking;
						shooting_demand --;
					}
			}
			#endregion
			
			#region Debug smartAI
			show_debug_message("Walking: " + string(walking_demand));
			show_debug_message("Shooting: " + string(shooting_demand));
			show_debug_message("Actual State: " + string(state) + "Bool demandas: " + string(add_demands));
			#endregion
		}
		else
		{
			x_range = random_range(room_width/2, room_width);
			y_range = random_range(room_height/2, room_height);
		
			//animação de procurando lugar ou algo do tipo
		}
	}

#region States != Idle
	if(state = state.walking)
	{
		if(alarm[0] <= 0)
		{
			if(mp_grid_path(global.grid, path, x, y, x_goal, y_goal, 0))
				path_start(path, 4, path_action_stop, false);
			
			alarm[0] = timer;
			//state = choose(state.idle, state.shooting);
			state = state.idle;
		}
	}

	if(object_exists(obj_player))
	{
		if(state = state.shooting)
		{
			if(alarm[0] <= 0)
			{
				instantiate_Action = scrp_inst_enemy;
		
				alarm[1] = alarm_bullet;		
				alarm[0] = timer;
		
				state = state.idle;
			}
		}
	}
	else
	{
		state = state.idle;
	}
#endregion

#region Limit

if(x_goal <= 550)
{
	x_goal = 550;
}
else if(x_goal >= 950)
{
	x_goal = 950;
}

if(y_goal <= 120)
{
	y_goal = 120;
}
else if(y_goal >= 680)
{
	y_goal = 680;
}
#endregion