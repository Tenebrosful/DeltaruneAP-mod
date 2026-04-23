/// PATCH

/// REPLACE
            if (subsubcon == 0)
            {
                var dopause = false;
                
                if (os_type == os_ps4 || os_type == os_ps5)
                {
                    var trackpos = audio_sound_get_track_position(global.currentsong[1]);
                    var beginSil = 17.934;
                    var endSil = 19.612;
                    
                    if (trackpos >= beginSil && trackpos <= endSil)
                    {
                        scr_debug_print(string("trackpos=" + string(trackpos)));
                        dopause = true;
                    }
                }
                else if (contimer >= 40)
                {
                    dopause = true;
                }
                
                if (dopause)
                {
                    subsubcon = 1;
                    
                    with (obj_switchAsyncHelper)
                        docheck = false;
                    
                    audio_pause_sound(global.currentsong[1]);
                }
            }
            
            if (contimer >= 100)
/// CODE
            if (contimer >= 40)
            {
                with (obj_switchAsyncHelper)
                    docheck = false;
                
                audio_pause_sound(global.currentsong[1]);
            }
            
            if (contimer == 100)
/// END

/// REPLACE
    if (!variable_instance_exists(id, "presscount"))
        presscount = 0;
    
    if (button1_p())
        presscount++;
    
    if (!skipped)
    {
        if ((button1_p() && textimer > 30) || presscount >= 2)
        {
            skipped = 1;
            skiptimer = 0;
            f = instance_create(0, 0, obj_fadeout);
            f.fadespeed = 0.08;
            mus_volume(global.currentsong[1], 0, 15);
        }
    }
/// CODE
    if (button1_p() && skipped == 0)
    {
        skipped = 1;
        skiptimer = 0;
        f = instance_create(0, 0, obj_fadeout);
        f.fadespeed = 0.08;
        mus_volume(global.currentsong[1], 0, 15);
    }
/// END