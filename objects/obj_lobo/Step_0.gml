

if(state == "invisivel"){
	
	
	visible = false;
	
	
}

var tocha_colisao = instance_place(x, y, obj_tocha);

if (tocha_colisao != noone) {
    vida -= 1;
    // Destrua apenas a tocha com a qual houve colisão
    instance_destroy(tocha_colisao);
    state = "teleport";
}

if(vida<0){
	audio_stop_sound(Musica_Lobo);

var music = Musica_Floresta;
var loop = true;


audio_play_sound(music, 1, loop);

	instance_destroy(obj_tp);

	
	instance_destroy();

}


if (instance_exists(Obj_player)) {
  
	player_x = Obj_player.x;
    player_y = Obj_player.y;
	
	if place_meeting(Obj_player.x,Obj_player.y,obj_lobo){
instance_destroy(obj_portal);
}
	
	
	 if (point_distance(x, y, player_x, player_y) < 100 && state == "invisivel") {
		 
			state = "teleport";
		
			audio_stop_sound(Musica_Floresta);
			
				var music = Musica_Lobo;
				var loop = true;
				
				audio_play_sound(music, 1, loop);
			
	 }

}

if (state == "teleport") {
    var music = Son_Lobo;
    audio_play_sound(music, 5, false);

    direction_to_player = point_direction(x, y, player_x, player_y);

    var teleportDistance = 80;

    var new_x = player_x + lengthdir_x(teleportDistance, direction_to_player);
    var new_y = player_y + lengthdir_y(teleportDistance, direction_to_player);

    if (!place_meeting(new_x, new_y, Obj_parede) && place_meeting(new_x, new_y, lobones)) {
        var side_distance = 5;
        var side_x = new_x + lengthdir_x(side_distance, direction_to_player);
        var side_y = new_y + lengthdir_y(side_distance, direction_to_player);

        var distance = point_distance(side_x, side_y, new_x, new_y);
        if (distance <= teleportDistance && distance > side_distance && !place_meeting(side_x, side_y, Obj_parede)) {
            x = side_x;
            y = side_y;

            visible = true;

            var portal_brabo = instance_create_layer(x, y, "Personagens", obj_tp);

            portal_created = true;
            teleport_timer = 0;

            state = "andando";
        }
    }
}


if(portal_created){
	
					teleport_timer++;	
}
			
if (teleport_timer >= 60 * 2) {
			
instance_destroy(obj_tp);
}
	

if(state == "andando"){
	
	
	move_speed = 3;
		
		
	direction_to_player = point_direction(x, y, player_x, player_y);
	x += lengthdir_x(move_speed, direction_to_player);
	y += lengthdir_y(move_speed, direction_to_player);
	
	 if (direction_to_player >= 45 && direction_to_player < 135) {
          
            sprite_index = lobo_up;
        } else if (direction_to_player >= 135 && direction_to_player < 225) {
            
            sprite_index = lobo_left;
        } else if (direction_to_player >= 225 && direction_to_player < 315) {
            
            sprite_index = lobo_down;
        } else {
           
            sprite_index = lobo_right;
        }
		
		
		
			 
			
		 
	
}




if(place_meeting(x, y, Obj_player)){
	
	
		Obj_player.invunerabilidade-=1;
		
		
		
		
		
		  if (direction_to_player >= 45 && direction_to_player < 135) {
        

            
				
                    var mordida = instance_create_layer(x, y-30, "Instances", obj_mordida);
                    
                
  
					
                    mordida.direction = 90;
					
					state = "sumir";
					
		
             
				
            } else if (direction_to_player >= 225 && direction_to_player < 315) {
				
	
               
                    var mordida = instance_create_layer(x, y+60, "Instances", obj_mordida);
                   
                 
          

                
                    mordida.direction = 270;
				
				
					state = "sumir";
				
             
            } else {
         
                if (direction_to_player >= 135 && direction_to_player < 225) {
		
					sprite_index = lobo_mordendo_esquerda;
			
					if (image_index >= image_number - 1) {
       
		
						
					state = "sumir";
	  
						
													 }
					   
                } else if (direction_to_player >= 315 || direction_to_player < 45) {
                   
				   
				   sprite_index = lobo_mordendo_direita;
				   
					if (image_index >= image_number - 1) {
			
								
					state = "sumir";

										 }
				
			
                }
	
	
	
			}
	
}



	
	
if(state == "sumir"  && (direction_to_player >= 315 ||  direction_to_player < 45) || state == "sumir"  && (direction_to_player >= 225 && direction_to_player < 315) || state == "sumir"  && (direction_to_player >= 45 && direction_to_player < 135) ){
	
	
	sprite_index = lobo_sumir;
		if (image_index >= image_number - 1 ){
			
									
				visible = false;
				
				x = Obj_player.x + random_range(-300, 300);
				y = Obj_player.y + random_range(-300, 300);
				
				
				state = "cooldown";

				 }
	
	
}
	
if(state == "sumir"  && (direction_to_player >= 135 && direction_to_player < 225) || state == "sumir"  && (direction_to_player >= 225 && direction_to_player < 315) || state == "sumir" && (direction_to_player >= 45 && direction_to_player < 135)){
	
sprite_index = lobo_sumir_inverso;
	
	if (image_index >= image_number - 1 ){
			
									
				visible = false;
				
				x = Obj_player.x + random_range(-200, 200);
				y = Obj_player.y + random_range(-200, 200);
				
			
				state = "cooldown";
				
	
				 }
	
	
}


	
if(state == "cooldown"){
	
	sumir_timer++;
	
	if(sumir_timer>=60*5){
		
		sumir_timer = 0;
		state="teleport";
		
		
	}
	
}
	
	
	