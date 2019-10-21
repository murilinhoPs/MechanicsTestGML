/// @description Choose a initial state
state = choose(state.walking, state.shooting);

if(state == state.walking)
{
	estado_anterior = state.walking;
	
	walking_demand ++;
}
				
if(state == state.shooting)
{
	estado_anterior = state.shooting;
		
	shooting_demand ++;
}

