// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function BOLA_EXPOSIVA(){



if object_exists(obj_spawn_brabo)
{
    // Verifica se a variável width está definida em obj_spawn_brabo
		
     
        var minX = obj_spawn_brabo.x;
        var minY = obj_spawn_brabo.y;
        var maxX = obj_spawn_brabo.x + obj_spawn_brabo.sprite_width;
        var maxY = obj_spawn_brabo.y + obj_spawn_brabo.sprite_height;

        var spawnX = random_range(minX, maxX);
        var spawnY = random_range(minY, maxY);


        // Cria a instância de Obj_explosivo na posição gerada
        var instance = instance_create_layer(spawnX, spawnY, "Bola_Fogo", Obj_explosivo);
    }




}