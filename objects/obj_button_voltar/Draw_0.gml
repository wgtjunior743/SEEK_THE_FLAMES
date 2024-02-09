

if ( room == Credits) {
draw_self();

draw_set_font(fnt_menu);
draw_set_valign(fa_middle);

draw_text(x+60,y+50,button_text);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

}

if(room == Menu){

instance_destroy();

}