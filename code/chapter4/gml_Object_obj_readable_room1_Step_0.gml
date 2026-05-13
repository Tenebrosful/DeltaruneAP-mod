/// IMPORT
if (room == room_dw_churchc_savepoint)
    scr_depth();

if (myinteract == 3)
{
    if (!d_ex())
    {
        global.interact = 0;
        myinteract = 0;
        
        with (obj_mainchara)
            onebuffer = 3;
        
        if (selfdestruct == true)
            alarm[0] = 2;
        
        if (room == room_dw_churchc_savepoint && global.customflags[33] == 1)
        {
            if (image_index != 1)
                snd_play(snd_dooropen);
            
            image_index = 1;
            
            with (mywall)
                instance_destroy();
        }
    }
}

if (room == room_dw_church_darkmaze)
{
    if (global.customflags[37] == 1 && !d_ex())
    {
        with (mywall)
            instance_destroy();
        
        instance_destroy();
    }
}
