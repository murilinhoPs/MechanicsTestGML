var angulo = image_angle;

var inst = instance_create_layer(x + 20,y + 10, "Instances", obj_bullet_pl);
	
inst.direction = angulo;
//inst.speed = 10;

ball = inst;
jogar = true;
jogar_num = 1;

player_action = playerStates.holding;