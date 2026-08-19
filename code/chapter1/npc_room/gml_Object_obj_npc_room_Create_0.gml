/// PATCH

/// AFTER
        if (x >= 980)
            sprite_index = spr_bakesale_lancer;
/// CODE
        
        if (y >= 100)
        {
            sprite_index = spr_bakesale_pippins;
            
            if (global.customflags[global.custom_flags_indexes.use_bake_sale_ticket] == 1)
                instance_destroy();
        }
/// END

/// APPEND
if (room == room_forest_savepoint3)
{
    sprite_index = spr_daimond_knight_idle; // thank you toby for the incredible spelling
    if (global.customflags[global.custom_flags_indexes.castle_key_used])
    {
        instance_destroy();
    }
    else
    {
        mywall = instance_create(x, y, obj_soliddark);
        mywall.image_xscale = 2;
        mywall.image_yscale = 2;
    }
}

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
/// ENDif (room == room_forest_afterthrash2)
{
    if (global.plot >= 152)
        instance_destroy();

    sprite_index = spr_daimond_knight_idle
    extflag = "gotoprisonskip";
    skiptoprison = false;
}
/// END
