/// @description Insert description here
// You can write your code in this editor



if y > obj_local.y{

var near = instance_nearest(x, y, obj_arvore);
var layer_id = layer_get_id("Instances_1");
layer_add_instance(layer_id, near);
} else{
var near = instance_nearest(x, y, obj_arvore);
var layer_id = layer_get_id("coisas");
layer_add_instance(layer_id, near);
}



