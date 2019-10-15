if(obj_main.vidas > 0)
{
	var inst = instance_create_layer(x,y - 40, "Instances", obj_bullet_eny);

	inst.direction = point_direction(x,y,obj_player.x,obj_player.y);
	inst.image_angle = point_direction(x,y,obj_player.x,obj_player.y);
	inst.speed = irandom_range(6, 10);
}


