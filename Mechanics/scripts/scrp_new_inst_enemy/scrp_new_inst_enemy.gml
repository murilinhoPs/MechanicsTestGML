angulo = image_angle;

var inst = instance_create_layer(x - 20,y + 10, "Instances", obj_bullet_eny);
	
inst.direction = 180;
//inst.speed = 10;

ball_i = inst;
jogar_i = true;
i_num = 1;

b_states = b_states.catching;