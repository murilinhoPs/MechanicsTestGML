/// @description AI burra

if(vidas <= 0)
	instance_destroy();
	
	
inst_bullet = instance_nearest(x, y, obj_bullet_eny);

if(inst_bullet && !jogar_i)
{
	var bl_x = (inst_bullet.x div 100) * 100 + 50;
	var bl_y = (inst_bullet.y div 80) * 80 + 40;
	
		if(mp_grid_path(global.grid, path, x, y, bl_x, bl_y, 0) && bl_x > room_width/2)
		{
			path_start(path, 4, path_action_stop, false);	
		
			b_states = b_states.catching;
			alarm[0] = shoot_timer;
		}
}
	
	switch (b_states) {
	    case b_states.idle:
		
			#region idle
			#endregion
			
	        break;
			
	    case b_states.walking:
		
	        #region walking
			#endregion
			
	        break;
			
	    case b_states.shooting:
		
	        #region shooting
			#endregion
			
	        break;
			
		case b_states.catching:
		
		#region catching
			
		
//if(alarm[0] == shoot_timer)
//{
	
//	x_range_2 = random_range(room_width/2, room_width);
//	y_range_2 = random_range(80, room_height);
	
//	x_final = (x_range_2 div 100) * 100 + 50;
//	y_final = (y_range_2 div 80) * 80 + 40;
	
//	if(mp_grid_path(global.grid, path, x, y, x_final, y_final, 0))
//	{
//		path_start(path, 4, path_action_stop, false);
				
//	}
//}	
			
		if(jogar_i)
		{	
			if(i_num == 1)
			{
				ball_i.x = x + 20;
				ball_i.y = y + 10;
			}
			
				if(alarm[0] <= 0)
				{
					b_states = b_states.shooting;
					ball_i.speed = 10;
					i_num = 2;
					jogar_i = false;
			
					alarm[1] = 1;
				}
		}
			
			#endregion
			
	        break;
	}
