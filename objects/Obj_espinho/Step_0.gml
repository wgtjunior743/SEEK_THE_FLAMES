if espinho_atv == false  and place_meeting(x,y,	Obj_player){
espinho_atv = true;

alarm [0] = 60*0.5;
}

if espinho_atv = false {
image_index =  0;
}

if place_meeting(x,y,Obj_player) and image_index = 1{
Obj_player.invunerabilidade-=1;

}