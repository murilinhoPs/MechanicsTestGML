/// @description Test for enemy AI

//#region AreaToWalk

//var x_range = random_range(room_width/2, room_width);
//var y_range = random_range(room_height/2, room_height);

//var x_goal =  (x_range div 100) * 100 + 50;
//var y_goal = (y_range div 80) * 80 + 40;

//#endregion


//#region LimitGoal

//if(x_goal <= 550)
//{
//	x_goal = 550;
//}
//else if(x_goal >= 950)
//{
//	x_goal = 950;
//}

//if(y_goal <= 120)
//{
//	y_goal = 120;
//}
//else if(y_goal >= 680)
//{
//	y_goal = 680;
//}

//#endregion

//// Going to path (Pathfinding)
//if(mp_grid_path(global.grid, path, x, y, x_goal, y_goal, 0))
//{
	
//	path_start(path, 4, path_action_stop, false);
		
//}

#region Obsolete

//var mx = (mouse_x div 100) * 100 + 50;
//var my = (mouse_y div 80) * 80 + 40;//dodge  120.28

//if(mp_grid_path(global.grid, path, x, y, mx, my, 0))
//{
//	path_start(path, 4, path_action_stop, false);
	
//	show_debug_message(mx);
		
//}

//if(mx <= 550)
//{
//	mx = 550;
//}
//else if(x >= 950)
//{
//	mx = 950;
//}

//if(my <= 120)
//{
//	my = 120;
//}
//else if(my >= 680)
//{
//	my = 680;
//}
#endregion