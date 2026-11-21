/// PATCH

/// AFTER
    c_mus2("volume", 0, 30);
/// CODE
    if (global.AP_ost_shuffle)
    {
        c_customfunc(function()
        {
            mus_volume(global.AP_music[1], 0, 30);
        });
    }
/// END

/// REPLACE
    c_mus2("initloop", "church_wip.ogg", 0);
    c_mus2("volume", 0, 0);
    c_mus2("volume", 1, 30);
    c_pannable(1);
    c_panobj(kr_actor, 30);
    c_wait(31);
    c_pannable(0);
    c_actortokris();
    c_actortocaterpillar();
    c_terminatekillactors();
}

if (con == 40 && customcon == 1 && !d_ex())
/// CODE
    c_mus2("initloop", "church_wip.ogg", 1);
    c_mus2("volume", 0, 0);
    
    if (global.AP_ost_shuffle)
    {
        c_customfunc(function()
        {
            global.AP_music[0] = snd_init("church_wip.ogg");
            global.AP_music[1] = mus_loop(global.AP_music[0]);
            mus_volume(global.AP_music[1], 0, 0);
            mus_volume(global.AP_music[1], 1, 30);
        });
    }
    else
        c_mus2("volume", 1, 30);
    
    c_pannable(1);
    c_panobj(kr_actor, 30);
    c_wait(31);
    c_pannable(0);
    c_actortokris();
    c_actortocaterpillar();
    c_terminatekillactors();
}

if (con == 40 && customcon == 1 && !d_ex())
/// END

/// REPLACE
    c_mus2("initloop", "church_wip.ogg", 0);
    c_mus2("volume", 0, 0);
    c_mus2("volume", 1, 30);
    c_pannable(1);
    c_panobj(kr_actor, 30);
    c_wait(31);
    c_pannable(0);
    c_actortokris();
    c_actortocaterpillar();
    c_terminatekillactors();
}

if (con == 60 && customcon == 1 && !d_ex())
/// CODE
    c_mus2("initloop", "church_wip.ogg", 1);
    c_mus2("volume", 0, 0);
    
    if (global.AP_ost_shuffle)
    {
        c_customfunc(function()
        {
            global.AP_music[0] = snd_init("church_wip.ogg");
            global.AP_music[1] = mus_loop(global.AP_music[0]);
            mus_volume(global.AP_music[1], 0, 0);
            mus_volume(global.AP_music[1], 1, 30);
        });
    }
    else
        c_mus2("volume", 1, 30);
    
    c_pannable(1);
    c_panobj(kr_actor, 30);
    c_wait(31);
    c_pannable(0);
    c_actortokris();
    c_actortocaterpillar();
    c_terminatekillactors();
}

if (con == 60 && customcon == 1 && !d_ex())
/// END

/// REPLACE
    c_mus2("initloop", "church_wip.ogg", 0);
    c_mus2("volume", 0, 0);
    c_mus2("volume", 1, 30);
    c_pannable(1);
    c_panobj(kr_actor, 30);
    c_wait(31);
    c_pannable(0);
    c_actortokris();
    c_actortocaterpillar();
    c_terminatekillactors();
}

if (con == 70 && !i_ex(obj_cutscene_master))
/// CODE
    c_mus2("initloop", "church_wip.ogg", 1);
    c_mus2("volume", 0, 0);
    
    if (global.AP_ost_shuffle)
    {
        c_customfunc(function()
        {
            global.AP_music[0] = snd_init("church_wip.ogg");
            global.AP_music[1] = mus_loop(global.AP_music[0]);
            mus_volume(global.AP_music[1], 0, 0);
            mus_volume(global.AP_music[1], 1, 30);
        });
    }
    else
        c_mus2("volume", 1, 30);
    
    c_pannable(1);
    c_panobj(kr_actor, 30);
    c_wait(31);
    c_pannable(0);
    c_actortokris();
    c_actortocaterpillar();
    c_terminatekillactors();
}

if (con == 70 && !i_ex(obj_cutscene_master))
/// END