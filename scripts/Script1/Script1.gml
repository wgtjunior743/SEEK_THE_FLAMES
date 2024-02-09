 // Variáveis de estado do jogador
function scr_player_walk(){
var animacao = "parado"; // Inicialmente, o jogador está parado

direita = keyboard_check(ord("D"));
cima = keyboard_check(ord("W"));
esquerda = keyboard_check(ord("A"));
baixo = keyboard_check(ord("S"));

hveloc = (direita - esquerda) * veloc;
if place_meeting(x + hveloc, y, Obj_parede){
    while !place_meeting(x + sign(hveloc), y, Obj_parede){
        x+= sign(hveloc);
    }
    hveloc = 0;
}

x += hveloc;

vveloc = (baixo - cima) * veloc;

if place_meeting(x, y + vveloc, Obj_parede){
    while !place_meeting(x, y + sign(vveloc), Obj_parede){
        y += sign(vveloc);
    }
    vveloc = 0;
}
y += vveloc;

// Verifique qual animação deve ser reproduzida com base no estado do jogador
if (hveloc > 0) {
    animacao = "andando_direita";
	image_xscale = +1;
} else if (hveloc < 0) {
    animacao = "andando_esquerda";
	image_xscale = -1;
} else if (vveloc > 0) {
    animacao = "andando_baixo";
} else if (vveloc < 0) {
    animacao = "andando_cima";
} else {
    animacao = "parado";
}

// Agora, você pode usar a variável "animacao" para controlar a animação do jogador
// Por exemplo, você pode definir a subimagem do sprite com base na animação atual
if (animacao == "parado") {
    sprite_index = prot_parado;
} else if (animacao == "andando_direita") {
    sprite_index = prot_lado;
} else if (animacao == "andando_esquerda") {
    sprite_index = prot_lado;
} else if (animacao == "andando_baixo") {
    sprite_index = prot_baixo;
} else if (animacao == "andando_cima") {
    sprite_index = prot_cima;
}



if mouse_check_button_pressed(mb_right){
		alarm[0]=10;
		dash_dir = point_direction(x,y,mouse_x,mouse_y);
		estado = scr_player_dash;
		
		
	}
	
  if (invunerabilidade <0) and global.vida = 1{
global.vida -=1;
}
else if (invunerabilidade <0){
global.vida -=1;
invunerabilidade = 60*5;
}
show_debug_message(global.vida);

// No evento Step do obj_player (personagem)
if (invunerabilidade > 0) {
    invunerabilidade -= 1; // Decrementa o contador de invulnerabilidade
    
    // Faça o personagem piscar (alterar a visibilidade a cada frame)
    if (floor(invunerabilidade / 10) % 2 == 0) {
        visible = true; // O personagem fica visível em frames pares
    } else {
        visible = false; // O personagem fica invisível em frames ímpares
    }
} else {
    // Se o tempo de invulnerabilidade acabou, torne o personagem visível
    visible = true;
}

}


function scr_player_dash(){
	temp = 0;
	if temp = 0{
		audio_play_sound(Sound1,1,0);
		temp +=1;
	hveloc = lengthdir_x(dash_veloc,dash_dir);
	vveloc = lengthdir_y(dash_veloc,dash_dir);
	
	if place_meeting(x + hveloc, y, Obj_parede){
    while !place_meeting(x + sign(hveloc), y, Obj_parede){
        x+= sign(hveloc);
    }
    hveloc = 0;
}

if place_meeting(x, y + vveloc, Obj_parede){
    while !place_meeting(x, y + sign(vveloc), Obj_parede){
        y += sign(vveloc);
    }
    vveloc = 0;
}
	x += hveloc;
	y+=vveloc;
	
	var _inst = instance_create_layer(x,y,"Instances", obj_dash);
	_inst.sprite_index = prot_part;
	
	var _inst2 = instance_create_layer(random_range(Obj_player.x-2,Obj_player.x+2),random_range(Obj_player.y-2,Obj_player.y+2),"Instances", obj_dash);
	_inst2.sprite_index = prot_part2;
	
	var _inst3 = instance_create_layer(random_range(Obj_player.x-3,Obj_player.x+3),random_range(Obj_player.y-3,Obj_player.y+3),"Instances", obj_dash);
	_inst3.sprite_index = prot_Tag;
	
	obj_dash.dash = true;
	
	if temp = 100{
	temp = 0;
	}
	}
}

function scr_player_morrendo(){
	
	sprite_index = prot_morreno;
	alarm[2] =1;

}