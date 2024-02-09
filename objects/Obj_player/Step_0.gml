/// @description Insert description here
// You can write your code in this editor
script_execute(estado);




nearest_torch = instance_nearest(x, y, obj_tocha);

if (nearest_torch != noone) {
    // Calcule a distância entre o jogador e a tocha mais próxima
    var distance_to_torch = point_distance(x, y, nearest_torch.x, nearest_torch.y);

    // Defina a distância máxima para pegar a tocha (ajuste conforme necessário)
    var max_distance = 50;

    if (distance_to_torch < max_distance && keyboard_check_pressed(ord("E"))) {
        if (holding_torch != noone) {
            // Se já estiver segurando uma tocha, solte-a ao pressionar "E" novamente
            holding_torch = noone;
        } else {
            // Caso contrário, pegue a tocha mais próxima
            holding_torch = nearest_torch;
        }
    }
}

// Se o jogador estiver segurando uma tocha, mantenha-a junto dele

if(instance_exists(obj_tocha)){

if (holding_torch != noone) {
    holding_torch.x = x;
    holding_torch.y = y;
}

}
if (invunerabilidade <0){
global.vida -=1;
invunerabilidade = 60*5;
}

//show_debug_message(global.vida);



if global.vida <= 0{
	
	audio_stop_sound(Musica_azavel);
	audio_stop_sound(Musica_lagones);
	audio_stop_sound(Musica_Lobo);
	estado = scr_player_morrendo;
		
			if(instance_exists(obj_lobo)){
				
				instance_destroy(obj_lobo);
				instance_create_layer(x = 1637.087, y = 60.14668,"Personagens", obj_lobo);
				
				
				
			}
			
			if(instance_exists(obj_lagones)){
				
				instance_destroy(obj_lagones);
				instance_create_layer(x = 720, y = 64, "Personagens", obj_lagones);
			
				
			
			}
			
			if(instance_exists(obj_azaema)){
				
				instance_destroy(obj_azaema);
				instance_create_layer(x = 224, y = 672, "Personagens", obj_azaema);
			
			}


	var music = Musica_Floresta;
	var loop = true;
	audio_play_sound(music, 1, loop);
	

	
}