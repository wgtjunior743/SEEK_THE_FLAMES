/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (instance_exists(Obj_player)) {
	
	
	 if (place_meeting(Obj_player.x, Obj_player.y,azazel)) {
		 
		 lutar = true;
		 
	 }
	
}





if(vida<=0){
	
	instance_destroy(soco1);
	instance_destroy(soco2);
	instance_destroy(Obj_explosivo);
	instance_destroy(obj_boladefogo);
	
	instance_destroy();

}

if(state == "normal" && !boladefire){
	
socos = false;	
sprite_index = spr_azaema;	
	
}


if(!alarm[1] && lutar ){
	
	socos = true;
	alarm[1] = 60*8;

}


if(!alarm[0] && !socos  && lutar){
	
	
alarm[0] = 60*3;
boladefire = false;	
	
}


if(!alarm[2]  && lutar ){
	
	
alarm[2] = 60*2;
	
	
}

if(!alarm[3]  && lutar ){
	
	
alarm[3] = 60*10;

	
}

if(ativar){
	
anim_timer++;

}



	
if(state == "explodir"){
	
	
	
if (instance_exists(Obj_explosivo)){
	
	
	Obj_explosivo.image_speed = 1;
	Obj_explosivo.ativar = true;
		
	
	if(Obj_explosivo.image_number>1){
			ativar = true;

	
			if(obj_azaema.anim_timer>=60*1){
				ativar = false;
				anim_timer = 0;
				state = "padrao";
			Obj_explosivo.sprite_index = spr_fogoativo;
			
			
			
			
			}
			
		
	}
	
}






}

	

if (state == "socao") {
    sprite_index = spr_socando;
    
    if (!voar_socos && image_index >= image_number - 1) {
        image_speed = 0;
        
        soco1 = instance_create_layer(obj_azaema.x + 60, obj_azaema.y + 20, "Bola_Fogo", obj_soco);
        soco2 = instance_create_layer(obj_azaema.x - 60, obj_azaema.y + 20, "Bola_Fogo", obj_soco_espelho);
        
		
        voar_socos = true;
		
		
        
    
    }
	

	
	    if (voar_socos) {
  
            if (soco1.image_index >= soco1.image_number - 1) {
                soco1.direction = point_direction(soco1.x, soco1.y, Obj_player.x, Obj_player.y);
                soco1.speed = 6;
				
				
				state = "pos_soco";
			
				
            }
            
            if (soco2.image_index >= soco2.image_number - 1) {
                soco2.direction = point_direction(soco2.x, soco2.y, Obj_player.x, Obj_player.y);
                soco2.speed = 6;
			
				
				state = "pos_soco";
			
            }
        }
	
}

if(state == "pos_soco"){
	
	
	image_speed = -1;
	contar++;
	
	

if (place_meeting(soco1.x , soco1.y , obj_tocha)) {
    vida -= 1;
	instance_destroy(soco1);

  
}

if (place_meeting(soco2.x , soco2.y , obj_tocha)) {
    vida -= 1;
	instance_destroy(soco2);

  
}

	
		if(place_meeting(soco1.x,soco1.y, Obj_player)){
				Obj_player.invunerabilidade-=1;
		
			}
			
					if(place_meeting(soco2.x, soco2.y, Obj_player)){
				Obj_player.invunerabilidade-=1;
		
			}
	
	if(contar>=60*3){
		
		instance_destroy(soco1);
		instance_destroy(soco2);
		
	
	}
	
	 if (image_speed < 0 && image_index < 0.9) {
        voar_socos = false;
		socos = false;
        state = "normal";
		
    }
	
	
	
}