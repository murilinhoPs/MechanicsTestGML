/// @description Diminuir a vida do player

instance_destroy();
	
obj_main.vidas -= 1;
obj_main.pnts_inimigo += 10;
	
if(instance_exists(obj_inimigo))
{
	// Quando o inimigo levar tiro, ele vai ficar andando para escapar dos tiros
	enemy_obj.interfer_demands = true;
	enemy_obj.shooting_demand ++;
}

