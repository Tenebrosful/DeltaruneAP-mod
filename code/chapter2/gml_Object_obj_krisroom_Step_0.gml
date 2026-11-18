/// PATCH

/// REPLACE
            instance_create(0, 0, obj_persistentfadein);
            scr_windowcaption(stringsetloc("THE DARK", "obj_krisroom_slash_Step_0_gml_293_0"));
            global.plot = 49;
            scr_become_dark();
            room_goto(room_dw_cyber_intro_1);
        }
    }
}
/// CODE
            instance_create(0, 0, obj_persistentfadein);
            scr_windowcaption(stringsetloc("THE DARK", "obj_krisroom_slash_Step_0_gml_293_0"));
            global.plot = 49;
            scr_become_dark();
            room_goto(room_dw_cyber_intro_1);
        }
        
        if (con == 106 && !d_ex())
        {
            global.flag[302] = 2;
            global.flag[432] = 1;
            mus_volume(global.currentsong[1], 0, 50);
            fade = instance_create(0, 0, obj_fadeout);
            
            with (fade)
            {
                fadespeed = 0.02;
                depth = 10000;
            }
            
            con = 107;
            alarm[4] = 50;
        }
        
        if (con == 107)
        {
            snd_free_all();
            con = 108;
            alarm[4] = 50;
        }
        
        if (con == 109)
        {
            scr_windowcaption(" ");
            global.typer = 5;
            global.fc = 0;
            global.msg[0] = stringsetloc("* (But^1, when you opened your eyes...)/%", "obj_krisroom_slash_Step_0_gml_283_0");
            instance_create(0, 0, obj_dialoguer);
            con = 110;
        }
        
        if (con == 110 && !d_ex())
        {
            instance_create(0, 0, obj_persistentfadein);
            scr_windowcaption(stringsetloc("THE DARK", "obj_krisroom_slash_Step_0_gml_293_0"));
            global.plot = 12;
            scr_become_dark();
            room_goto(room_dw_castle_area_1);
        }
    }
}
/// END

/// BEFORE
    if (con >= 100 && con < 150)
    {
        global.tempflag[38] = 1;
/// CODE
    
    if (con >= 30 && con < 100)
    {
        if (global.customflags[global.custom_flags_indexes.light_world_reminder] == 0 && obj_mainchara.y > 180)
        {
            global.customflags[global.custom_flags_indexes.light_world_reminder] = 1;
            con = 31;
            global.interact = 1;
            scr_speaker("no_name");
            msgset(0, "\\s0* (You realize that while there \\cYmay be important story details ahead\\cW...)/");
            msgnext("\\s1* (There \\cYwon't be any check locations in the Light World\\cW.)/");
            msgnext("* (Also, you are able to \\cYsleep until Castle Town\\cW.)/");
            msgnext("* (You considered this carefully before leaving the temptation of your bed!)/%");
            d_make();
        }
    }
    
    if (con == 31 && !instance_exists(obj_dialoguer))
    {
        global.interact = 0;
        con = 30;
    }
/// END