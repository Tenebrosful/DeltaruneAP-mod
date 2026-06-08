/// PATCH

#if CHAPTER_1
/// REPLACE
    for (i = 0; i < 4; i += 1)
    {
        if (global.hp[i] < 1)
            global.hp[i] = round(global.maxhp[i] / 8);
    }
/// CODE
    for (i = 0; i < 4; i += 1)
    {
        if (global.hp[i] < 1 && global.maxhp[i] > 0)
            global.hp[i] = round(global.maxhp[i] / 8);
    }
/// END
#elsif CHAPTER_4
/// REPLACE
    for (var i = 0; i < 5; i += 1)
    {
        if (global.hp[i] < 1)
            global.hp[i] = round(global.maxhp[i] / 8);
    }
/// CODE
    for (var i = 0; i < 5; i += 1)
    {
        if (global.hp[i] < 1 && global.maxhp[i] > 0)
            global.hp[i] = round(global.maxhp[i] / 8);
    }
/// END
#else
/// REPLACE
    for (i = 0; i < 5; i += 1)
    {
        if (global.hp[i] < 1)
            global.hp[i] = round(global.maxhp[i] / 8);
    }
/// CODE
    for (i = 0; i < 5; i += 1)
    {
        if (global.hp[i] < 1 && global.maxhp[i] > 0)
            global.hp[i] = round(global.maxhp[i] / 8);
    }
/// END
#endif

/// AFTER
if (global.myfight == 0)
{
/// CODE
    if (global.charturn == 0 && global.maxhp[global.char[0]] <= 0)
        scr_nexthero();
/// END

#if CHAPTER_1
/// REPLACE
        global.battlemsg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_battlecontroller_slash_Step_0_gml_40_0"), string(global.monsterexp[3]), string(global.monstergold[3]));
/// CODE
        global.battlemsg[0] = stringsetsubloc("* You won^1!&* Got ~1 EXP and ~2 D$./%", string(global.monsterexp[3]), string(global.monstergold[3]), "obj_battlecontroller_slash_Step_0_gml_42_0");
        
        if (global.flag[37] == 1)
            global.battlemsg[0] = stringsetloc("* You won the battle!/%", "obj_battlecontroller_slash_Step_0_gml_43_0");
        
        if (global.flag[63] == 1)
        {
            global.battlemsg[0] = stringsetsubloc("* You won^1!&* Got ~1 D$^1.&* You became stronger./%", string(global.monstergold[3]), "obj_battlecontroller_slash_Step_0_gml_46_0");
            
            var lvsnd = snd_play_pitch(snd_dtrans_lw, 2);
            snd_volume(lvsnd, 0.7, 0);
            scr_levelup();
        }
/// END
#endif