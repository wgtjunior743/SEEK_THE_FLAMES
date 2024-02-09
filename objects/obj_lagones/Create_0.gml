// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


state = "começo";
move_speed = 0;

vida = 3;


cuspida = false;
cuspida_timer = 0;

mergulho = false;
mergulho_timer = 0;

mordendo = false;

player_x = Obj_player.x;
player_y = Obj_player.y;

attack_loop = 0;

direction_to_player = point_direction(x, y, player_x, player_y);
