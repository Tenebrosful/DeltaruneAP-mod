/// PATCH

/// AFTER
        {
            sprite_index = spr_npc_mrelegance;
        }
/// CODE
        
        if (x >= 500)
        {
            sprite_index = spr_ponman_touched;
            
            if (global.customflags[4] == 1)
                instance_destroy();
        }
/// END

/// AFTER
        if (x >= 980)
            sprite_index = spr_bakesale_lancer;
/// CODE
        
        if (y >= 100)
        {
            sprite_index = spr_bakesale_pippins;
            
            if (global.customflags[5] == 1)
                instance_destroy();
        }
/// END

/// BEFORE
    if (room == room_forest_fightsusie)
    {
        sprite_index = spr_lancer_dt;
/// CODE
    if (room == room_forest_savepoint3)
    {
        sprite_index = spr_diamond_overworld;
        
        if (global.customflags[5] == 1)
            instance_destroy();
    }
    
/// END

/// REPLACE
    if (room == room_forest_fightsusie)
    {
        sprite_index = spr_lancer_dt;
        
        if (global.plot >= 150)
            instance_destroy();
    }
/// CODE
    if (room == room_forest_fightsusie)
    {
        sprite_index = spr_lancer_dt;
        
        if (global.plot >= 152)
            instance_destroy();
    }
/// END