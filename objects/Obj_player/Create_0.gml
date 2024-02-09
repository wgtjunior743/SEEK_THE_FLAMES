
//movimentação
direita = -1;
cima = -1;
esquerda = -1;
baixo = -1;
	
hveloc = 0;
vveloc = 0;

veloc = 2;

//dash
dash_dir = -1;
dash_veloc = 6;

//vida
invunerabilidade = 0;
global.vida = 3;

// No evento Create do obj_player
holding_torch = noone; // Inicialmente, o jogador não está segurando nenhuma tocha
nearest_torch = noone; // Inicialmente, não há tocha próxima


//estado
estado  = scr_player_walk;


