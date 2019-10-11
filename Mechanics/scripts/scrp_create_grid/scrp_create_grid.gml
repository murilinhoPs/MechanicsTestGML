var w = 100;
var h = 80;


//for(var i = 0; i <= room_height; i += h)
//{
//	//draw_line_width(0,i, room_width, i, 1);
		
//}

for(var i = 0; i < room_width; i += w)
{
	//draw_line_width(i,0, i, room_height, 1);
	
	//Grid aliado
	if(i < room_width/2)
	{	
		var variavel = 40 + h;
		
		for(var t = 0; t < room_width; t += h)
		{
		
			layer_sprite_create("chao", 50 + i, variavel,spr_move);
			
			if(variavel <= 600)
				variavel += h;
			show_debug_message(variavel);
		}
	}
	// Grid Inimigo
	if(i >= room_width/2)
	{	
		var variavel = 40 + h;
		
		for(var t = 0; t < room_width; t += h)
		{
		
			layer_sprite_create("chao", 50 + i, variavel,spr_moveIA);
			
			if(variavel <= 600)
				variavel += h;
			show_debug_message(variavel);
		}
	}
}

