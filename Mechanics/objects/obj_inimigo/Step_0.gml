/// @description enemy AI and stuff

//Ir até a bola e pegar ela > escolher um lugar aleatório no mapa X vezes (se ele levou uma bolada ele anda mais um pouco [demands] > atira a bola no player > volta a andar aelatoriamente com o demands e quando identificar uma bola ele volta ao ciclo

if (vidas <= 0)
	instance_destroy();
	
distance_bl = collision_circle(x,y, 150,obj_bullet_pl, false, true);
inst_bl = instance_nearest(x,y,obj_bullet_pl);
if(alarm[2] <= 0 && inst_bl)
{
	
	direction = choose(0,90,180,270);
					
	var dir_goal = direction;
	
	//var bl_x = (inst_bl.x div 100) * 100 + 50;
	//var bl_y = (inst_bl.y div 80) * 80 + 40;
		
	//if(mp_grid_path(global.grid, path, x, y, bl_x, bl_y, 0))
	//{
	//	path_start(path, 4, path_action_stop, false);	
		
	//	state = state.catching;
	//	estado_anterior = state.catching;
			
	//}

		
	if(dir_goal = 0 ||	dir_goal = 180)	
	{		
		x += 200;
		
	}
	if(dir_goal = 90 ||	dir_goal = 270)	
	{								
		y += 160;

	}
		
	alarm[2] = dash_timer;
}

	if(state = state.idle)
	{
		if(alarm[0] <= 0)
		{
			if(walking_demand >= 0 || shooting_demand >= 0)
			{
			
				#region Idle Update demands
	
				if(!interfer_demands)
				{
					if((walking_demand > shooting_demand + 3 || shooting_demand > walking_demand + 4))
						add_demands = false;
			
					if(walking_demand == shooting_demand)
					{	
						add_demands = true;
					}
				}
		
				#endregion
	
					#region Demandas	
		
		// Se tiver interferência do player, ele vai tomar as açoes um pouco diferentes. Basicamente oq muda é andar por um tempo maior
				#region Interferir
					if(interfer_demands)
					{						
						if(shooting_demand <= 5 )
						{
							add_demands = false;
						}
						
						if(walking_demand == shooting_demand)
						{
							interfer_demands = false;
						}
						
						//show_debug_message(string(shooting_demand) + " Código shooting " + string(walking_demand) + " Código walking");
			
						// se o player tomou 4 tiros e for nos primeiros niveis/menos pontos o inimigo vai andar até voltar ao normal
			
						// se o inimigo tomou mais do que 3 tiros ele vai andar até voltar ao normal
					}
				#endregion
		
						if(add_demands)
						{
							if(estado_anterior == state.walking)
							{
								walking_demand ++;
							}
				
							if(estado_anterior == state.shooting)
							{
								shooting_demand ++;
							}
						}
						if(!add_demands)
						{		
							if(walking_demand > shooting_demand)
								{
									state = state.shooting;
									estado_anterior = state.shooting;
									
									walking_demand --;
								}
							else if(walking_demand < shooting_demand)
								{
									state = state.walking;
									estado_anterior = state.walking;
									
									shooting_demand --;
								}
						}
						#endregion
			
						#region Debug smartAI
						//show_debug_message("Walking: " + string(walking_demand) + ", Shooting: " + string(shooting_demand) + ", Before State: " + string(estado_anterior));
						#endregion
			}			
			// Faz mais alguma coisa sla agora
			alarm[0] = idle_timer;
		}
		else
		{	
			state = state.idle;
			//animação de procurando lugar ou algo do tipo
		}
	}


#region States != Idle
	if(state = state.walking)
	{
		if(alarm[0] <= 0)
		{	
			
			x_goal = (x_range div 100) * 100 + 50;
			y_goal = (y_range div 80) * 80 + 40;	
			
			if(mp_grid_path(global.grid, path, x, y, x_goal, y_goal, 0))
			{
				path_start(path, 4, path_action_stop, false);
				
			}

			alarm[0] = timer;

			state = state.idle;
		}
		
		else
		{	
			x_range = random_range(room_width/2, room_width);
			y_range = random_range(room_height/2, room_height);
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
		state = state.walking;
	}
#endregion

#region Limit_Goal

if(x_goal <= 550)
{
	x_goal = 550;
	//x = 550;
}
else if(x_goal >= 95 )
{
	x_goal = 950;
	//x = 950;
}

if(y_goal <= 120)
{
	y_goal = 120;
	//y = 120;
}
else if(y_goal >= 680 )
{
	y_goal = 680;
	//y = 680;
	
}

	if(x >= room_width - 50)//450)
	{
		x = room_width - 50;
	}
	else if(x <= room_width/2 + 50)
	{
		x = room_width/2 + 50;
	}
#endregion