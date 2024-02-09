/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(Hover == true){
	
	draw_self();

draw_set_font(fnt_menu);
draw_set_valign(fa_middle);
	draw_set_color(c_red);
draw_text(x-30,y,button_text);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

}

if(Hover == false){
		draw_self();

draw_set_font(fnt_menu);
draw_set_valign(fa_middle);
	draw_set_color(c_white);
draw_text(x-30,y,button_text);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

	
	
	
}


