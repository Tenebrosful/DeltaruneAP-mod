/// PATCH

/// PREPEND
if (!i_ex(obj_mainchara))
{
    instance_destroy();
    
    if (i_ex(megablack))
    {
        with (megablack)
            instance_destroy();
    }
    
    exit;
}
/// END

/// AFTER
        if (kris_only == 0 && i_ex(global.cinstance[0]))
        {
            global.cinstance[0].x = (sus_x * 2) + 10;
            global.cinstance[0].y = sus_y * 2;
            
            with (obj_caterpillarchara)
            {
                visible = 1;
                scr_caterpillar_interpolate();
                facing[target] = 0;
                sprite_index = dsprite;
            }
        }
        
/// CODE
        scr_tempsave();
/// END