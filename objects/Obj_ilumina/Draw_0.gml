/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (!surface_exists(surf)){

	surf = surface_create(room_width,room_height);
	
}else{

surface_set_target(surf);

draw_clear_alpha(c_black,1);

gpu_set_blendmode(bm_subtract);

with(Obj_player){
	
var _valor = random_range(0.01,0.02);
draw_sprite_ext(spr_luz,0,x,y,1+_valor,1+_valor,0,c_white,1);


}

with(obj_tocha){
	
var _valor = random_range(0.01,0.04);
draw_sprite_ext(spr_luz,0,x,y,2+_valor,2+_valor,0,c_white,1);


}

gpu_set_blendmode(bm_normal);

surface_reset_target();

draw_surface(surf,0,0);
}










