/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


state = "invisivel";

vida = 3;

cd_morder = 0;

portal_created = false;

teleport_timer = 0;

mordida_timer = 0;

mordida_happen = false;

 sumir_timer = 0;

player_x = Obj_player.x;
player_y = Obj_player.y;

direction_to_player = point_direction(x, y, player_x, player_y);

