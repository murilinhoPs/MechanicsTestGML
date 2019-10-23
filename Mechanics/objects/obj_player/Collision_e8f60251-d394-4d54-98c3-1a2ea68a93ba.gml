/// @description Pegar a bola quando colidir

if(jogar_num == 0)
{	
	script_execute(scrp_instantiate);

	with (other)
	{
		instance_destroy();
	}
}