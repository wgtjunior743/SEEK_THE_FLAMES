/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Posicione o objeto "obj_lobo" próximo ao jogador

// Crie uma nova instância do objeto "obj_lobo" próximo ao jogador



instance_destroy();
	
var new_instance = instance_create_layer(Obj_player.x + random_range(-100, 100), Obj_player.y + random_range(-100, 100),"personagens",obj_lobo);

sumir = false;
