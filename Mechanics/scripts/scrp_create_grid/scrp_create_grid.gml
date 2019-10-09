var w = 100;
var h = 80;

draw_set_color(c_red);

for(var i = 0; i <= room_height; i += h)
{
	draw_line_width(0,i, room_width, i, 1);
	draw_sprite(spr_move, 0, 50, 40 + i);

}

for(var i = 0; i < room_width; i += w)
{
	draw_line_width(i,0, i, room_height, 1);
	draw_sprite(spr_move, 0, 50 + i, 40);
	instance_create_layer(50 + i, 40, "chao", object3);
	
	if(i < room_width)
	{
		var variavel = 40 + h;
		
		for(var t = 0; t < room_width; t += h)
		{
			//draw_sprite(spr_move, 0, 50 + i, variavel);
			
			instance_create_layer(50 + i, variavel, "chao", object3);
			
			variavel += h;
		}
	}
}

