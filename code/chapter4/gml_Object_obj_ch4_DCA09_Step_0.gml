/// PATCH

/// BEFORE
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
    c_customfunc(function()
    {
        if (global.AP_ost_shuffle)
        {
            global.dark_sanctuary_unshuffled_music[0] = snd_init("church_wip.ogg", false);
            global.dark_sanctuary_unshuffled_music[1] = mus_loop_ext(global.dark_sanctuary_unshuffled_music[0], 0, 1);
        }
    });
/// END

/// BEFORE
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
    c_customfunc(function()
    {
        if (global.AP_ost_shuffle)
        {
            global.dark_sanctuary_unshuffled_music[0] = snd_init("church_wip.ogg", false);
            global.dark_sanctuary_unshuffled_music[1] = mus_loop_ext(global.dark_sanctuary_unshuffled_music[0], 0, 1);
        }
    });
/// END

/// BEFORE
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
    c_customfunc(function()
    {
        if (global.AP_ost_shuffle)
        {
            global.dark_sanctuary_unshuffled_music[0] = snd_init("church_wip.ogg", false);
            global.dark_sanctuary_unshuffled_music[1] = mus_loop_ext(global.dark_sanctuary_unshuffled_music[0], 0, 1);
        }
    });
/// END