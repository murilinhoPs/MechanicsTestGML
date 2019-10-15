angulo = image_angle;

var inst = instance_create_layer(x,y + 10, "Instances", obj_bullet_pl);
	
inst.direction = angulo;
inst.speed = 10;
