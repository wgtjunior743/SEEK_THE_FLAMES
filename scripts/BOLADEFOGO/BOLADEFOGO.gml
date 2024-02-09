// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function boladefogo(){

sprite_index = spr_criandobola
if(sprite_index >= image_number -1){
	
	var bullet = instance_create_layer(obj_azaema.x, obj_azaema.y-55, "Bola_Fogo", obj_boladefogo);
	with bullet{
		bullet.direction = point_direction(bullet.x, bullet.y, Obj_player.x, Obj_player.y);
		bullet.speed = 5;

		}
	
	
	
	

	}
}

