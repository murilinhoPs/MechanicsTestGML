/// @description Test for enemy AI
var mx = (mouse_x div 100) *100 + 50;
var my = (mouse_y div 80) *80 + 40;//dodge  120.28


if(mp_grid_path(global.grid,path, x, y, mx, my, 1))
{
	path_start(path, 4, path_action_stop, false);
	
	show_debug_message(y);
		
}
