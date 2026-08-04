/// PATCH

/// AFTER
    if (swanboat.y <= 177)
    {
        swanboat_init_y = swanboat.y;
        release_swan = false;
        con = 5;
/// CODE
        
        if (global.fastswan)
        {
            swanboat.sprite_index = spr_swanboat_fast
            swanboat.image_speed = 3
            global.fastswanequiped = true;
            snd_play(snd_item);
            
            with (obj_npc_room)
                instance_destroy();
        }
        
/// END