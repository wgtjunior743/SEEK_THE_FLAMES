if (instance_exists(Obj_player)) {
  
	player_x = Obj_player.x;
    player_y = Obj_player.y;
	
	
	 if (place_meeting(Obj_player.x, Obj_player.y,lagones) && state == "começo") {
		 show_debug_message("ooooo");
			state = "andando";
		
			
			
	 }

}


var tocha_colisao = instance_place(x, y, obj_tocha);

if (tocha_colisao != noone) {
    vida -= 1;

    instance_destroy(tocha_colisao);
    state = "spawn_random";
}


if(vida<=0){
	
		
		instance_destroy(obj_cuspida_up);
		instance_destroy(obj_cuspida_down);
		instance_destroy(obj_cuspida_left);
		instance_destroy(obj_cuspida_right);
	
	instance_destroy();

}

if(state == "andando"){
	
	 sprite_index = lagones_andando;
	 
		move_speed = 2;
		
		
		 direction_to_player = point_direction(x, y, player_x, player_y);
	 	x += lengthdir_x(move_speed, direction_to_player);
		y += lengthdir_y(move_speed, direction_to_player);
		
	
			
			if(attack_loop>=2 && attack_loop<=3&&point_distance(x, y, player_x, player_y) < 400){
			
			move_speed = 5;
				 direction_to_player = point_direction(x, y, player_x, player_y);
	 	x += lengthdir_x(move_speed, direction_to_player);
		y += lengthdir_y(move_speed, direction_to_player);
			
			}
			
			
			if(attack_loop>=2 && attack_loop<=3&&place_meeting(x,y, Obj_player)){
			
			state = "mordida";
			attack_loop++;
		
			}
			
		if (!alarm[0]) {
	
    alarm[0] = 60 * 3;	
	
			}
	
	
}

if(state =="parado"){
	show_debug_message("papapaprado");
	sprite_index = lagones_andando;
	move_speed = 0;

	
	
}

if(state == "mordida"){
	
	sprite_index = lagones_mordida;
	mordendo = true;
	
	
	if(instance_exists(obj_dash)){
		
		if(obj_dash.dash == true){
		
		 state = "andando";
		mordendo = false;
		
	}
	
	if(obj_dash.dash == false){
		Obj_player.invunerabilidade-=1;
		
	}
		
	}else{
		
		Obj_player.invunerabilidade-=1;
		
	}
	
	
	
	 if (image_index >= image_number - 1) {
       
	   state = "andando";
		mordendo = false;
       
    }
}


if(attack_loop == 3 &&!mordendo) {

state = "mergulhada";

	
}


if(state == "cuspida" && !cuspida){
	
	
	if (point_distance(x, y, player_x, player_y) < 1000) {
	
	
	var direction_in_degrees = point_direction(x, y, player_x, player_y);
	
		if (!alarm[1]) {
	
  		alarm[1] = 60*3;
	
			}
	
	
cuspida = true;

	
		if (direction_in_degrees >= 45 && direction_in_degrees < 135) {
            // Up
			
			
			 var cuspida_up = instance_create_layer(x, y-40, "Personagens", obj_cuspida_up);
				if(place_meeting(cuspida_up.x, cuspida_up.y, Obj_player)){
				Obj_player.invunerabilidade-=1;
		
			}
		
        } 
		if (direction_in_degrees >= 135 && direction_in_degrees < 225) {
            // Left
			 var cuspida_left = instance_create_layer(x - 40, y, "Personagens", obj_cuspida_left);
			
			if(place_meeting(cuspida_left.x, cuspida_left.y, Obj_player)){
				Obj_player.invunerabilidade-=1;
		
			}
            
        } 
		if (direction_in_degrees >= 225 && direction_in_degrees < 315) {
            // Down
			var cuspida_down = instance_create_layer(x, y+40, "Personagens", obj_cuspida_down);
           if(place_meeting(cuspida_down.x, cuspida_down.y, Obj_player)){
				Obj_player.invunerabilidade-=1;
		
			}
		   
        } 
		if (direction_in_degrees >= 315 || direction_in_degrees < 45) {
            // Right
			var cuspida_right = instance_create_layer(x+40, y, "Personagens", obj_cuspida_right);
           
		   if(place_meeting(cuspida_right.x, cuspida_right.y, Obj_player)){
				Obj_player.invunerabilidade-=1;
		
			}
		   
        }
		
	}
 
 }


if(cuspida){
	
	cuspida_timer++;
	
	if(cuspida_timer>= 60 *4){
		
		instance_destroy(obj_cuspida_up);
		instance_destroy(obj_cuspida_down);
		instance_destroy(obj_cuspida_left);
		instance_destroy(obj_cuspida_right);
		
		cuspida = false;
		cuspida_timer = 0;
		
		attack_loop+=1;
	}

}


////////


if(state == "mergulhada"){
	
	attack_loop+=1;
	 sprite_index = lagones_mergulho;
	 
 if (image_index >= image_number - 1) {
   
   

    image_index = image_number - 1;
	
		
			x =  Obj_player.x;
			y =  Obj_player.y;
		
			mergulho  = true;
		
		}
		
		
	
		
		
	
}
	
	
		if(mergulho){
			
			mergulho_timer++;
			
			if(mergulho_timer>= 60*5){
				
		
			mergulho = false;
			mergulho_timer = 0;
			state = "mergulhada_ataque";

			
				
				
			}
			
			
		}
	
	
if (state == "mergulhada_ataque") {
	
    sprite_index = lagones_mergulho_ataque;
if(place_meeting(x,y, Obj_player)){
				Obj_player.invunerabilidade-=1;
		
			}
	
    if (image_index >= image_number - 1) {
        image_speed = -1;
		
       
    }
	
	if (image_index <= 0 && image_speed == -1) {
		
		x = Obj_player.x + random_range(-100, 100);
		y = Obj_player.y + random_range(-100, 100);
		state = "spawn_random";
       
    }
}
	
if(state == "spawn_random"){
	
	image_speed = 1;
	sprite_index = lagones_mergulho_reverso;
		

		

	 if (image_index >= image_number - 1) {
   
			attack_loop = 0;
			state = "andando";
			
		
		}
	
}