if(obj_main.vidas > 0)
{
	var inst = instance_create_layer(x,y - 40, "Instances", obj_bullet_ai);

	inst.direction = point_direction(x,y,obj_player.x,obj_player.y);
	inst.image_angle = point_direction(x,y,obj_player.x,obj_player.y);
	inst.speed = random_range(6, 8);
	
	enemy_obj = inst;
	
	
}


