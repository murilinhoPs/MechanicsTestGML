/// @description AI burra

if(vidas <= 0)
	instance_destroy();
		

		
		
switch (b_states) {
	case b_states.idle:
		
		#region idle
	
	if(alarm[2] <=0)
	{
		alarm[2] = idle_timer
		b_states = b_states.searching
	}
	else
	{
		//TODO
	}
		
		#endregion
			
	    break;
			
	case b_states.walking:
		
	    #region walking	

	if(alarm[2] <= 0)
	{	

		x_range_2 = random_range(room_width/2, room_width);
		y_range_2 = random_range(80, room_height);

		x_final = (x_range_2 div 100) * 100 + 50;
		y_final = (y_range_2 div 80) * 80 + 40;
	
			if(mp_grid_path(global.grid, path, x, y, x_final, y_final, 0))
			{
				path_start(path, 4, path_action_stop, false);
				
			}
		
		if(ball_i != undefined && jogar_i)
		{
			ball_i.x = x;
			ball_i.y = y;
		}

		
		alarm[0] = shoot_timer
		
		alarm[2] = idle_timer
		
		b_states = b_states.catching;
	}
	else
	{	
		
	}
		
		#endregion
			
	    break;
			
	case b_states.shooting:
		
	    #region shooting
		#endregion
			
	    break;
			
	case b_states.searching:
		
	#region searching
	
	
	if(alarm[2] <= 0)
	{
		inst_bullet = instance_nearest(x, y, obj_bullet_eny);

		if(inst_bullet && !jogar_i)
		{
			var bl_x = (inst_bullet.x div 100) * 100 + 50;
			var bl_y = (inst_bullet.y div 80) * 80 + 40;
	
			if(mp_grid_path(global.grid, path, x, y, bl_x, bl_y, 0) && bl_x > room_width/2)
			{
				path_start(path, 4, path_action_stop, false);	
				
			}
			
			
		}
		
		alarm[2] = idle_timer;
	}
	else
	{

	}
	
		
		#endregion
			
	    break;
		
	case b_states.catching:
		
	#region catching
	
			if(i_num == 1)
			{
				ball_i.x = x;
				ball_i.y = y;
			}
	
	if(alarm[2] <= 0)
	{	
		if(jogar_i)
		{	

			
			if(alarm[0] > 0)
			{
				show_debug_message("preparando para jogar");
			}
			else
			{
				//b_states = b_states.shooting;
				ball_i.speed = 10;
				i_num = 2;
				jogar_i = false;
				ball_i = undefined;
			
				alarm[1] = 1;
				alarm[2] = idle_timer;
			}
		}
	}
	else
	{
		//b_states = b_states.idle;
	}
			
		#endregion
			
	    break;
}

