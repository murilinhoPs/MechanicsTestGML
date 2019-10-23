//@description Grid visível para o player

if(room == rm_game)
{
	scrp_create_grid();
	
	mp_grid_add_instances(global.grid, obj_inimigo, false);
	
	repeat(2)
	{
			x_screen = random_range(room_width/2, room_width);
			y_screen = random_range(0, room_height);
		
			x_grid_pos = (x_screen div 100) * 100 + 50;
			y_grid_pos = (y_screen div 80) * 80 + 40;
			
		if(y_grid_pos <= 120)
		{
			y_grid_pos = 120;
		}
		else if(y_grid_pos >= 680)
		{
			y_grid_pos = 680;
		}		
			instance_create_layer(x_grid_pos, y_grid_pos, "Instances", obj_inimigo);
			//mp_grid_add_instances(global.grid, obj_inimigo, false);
	}
	
	//for (var i = 0; i < instance_number(obj_inimigo); ++i) 
	//{
	//    var inst = instance_find(obj_inimigo, i);
	//	mp_grid_add_instances(global.grid, inst, true);
	//}

}