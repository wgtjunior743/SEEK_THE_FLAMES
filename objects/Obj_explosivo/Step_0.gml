/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (sprite_index = spr_bola_explosiva && !ativar) {
   
    image_index = image_number = 1;
    image_speed = 0;
}


if (sprite_index = spr_bola_explosiva && ativar) {
   
    image_index = image_number = 2;
	 image_speed = 0
	 
	 
   
}




if(sprite_index == spr_fogoativo){
	
	if(place_meeting(x,y, Obj_player)){
				Obj_player.invunerabilidade-=1;
		
			}
	
	 image_speed = 1
		fogo_timer ++;
		if(fogo_timer>=60*5){
			
			instance_destroy();	
		}
	
}