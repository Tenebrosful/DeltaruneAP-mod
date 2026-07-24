/// PATCH

/// REPLACE
    if (global.plot < 292)
    {
        with (obj_platswap_statue)
/// CODE
    if (false)
    {
        with (obj_platswap_statue)
/// END

/// REPLACE
    c_msgsetloc(0, "\\Ed* This must be..^1. the feather that girl was talking about./%", "obj_dw_garden_aquashrine_slash_Step_0_gml_85_0");
/// CODE
    c_msgsetloc(0, "\\Ed* This statue looks..^1. interesting./%", "obj_dw_garden_aquashrine_slash_Step_0_gml_85_0");
/// END

/// REPLACE
    c_sprite(spr_kris_lift);
    c_customfunc(function()
    {
        scr_flag_set(24, 1);
        
        with (obj_platformfeather)
            instance_destroy();
        
        feathermarker.depth = kr_actor.depth - 100;
        feathermarker.visible = true;
        feathermarker.x = scr_spritecenter_x(kr_actor) - 12;
        feathermarker.y = krpos[0].y - 30;
        featherglow.x = feathermarker.x;
        featherglow.y = krpos[0].y - 50;
        
        if (!scr_keyitemcheck(25))
            scr_keyitemget(25);
    });
    c_var_lerp_instance(feathermarker, "y", krpos[0].y - 30, krpos[0].y - 50, 30, 2, "out");
    c_sound_play(snd_feather_get);
    c_mus2("volume", 0, 30);
    c_wait(30);
    c_speaker("none");
    c_msgsetloc(0, "* (You got the PETAL FEATHER!)/%", "obj_dw_garden_aquashrine_slash_Step_0_gml_125_0");
    c_talk();
    c_wait_talk();
    c_sound_play_x(snd_titan_wingshut, 1, 1.2);
    c_var_lerp_instance(featherglow, "image_alpha", 0, 1, 15);
/// CODE
    c_customfunc(function()
    {
        scr_flag_set(24, 1);

	with(kr_actor)
            scr_depth();
    });
    c_sound_play_x(snd_titan_wingshut, 1, 1.2);
/// END


/// REPLACE
    c_lerp_var_instance(featherglow, "image_alpha", 1, 0, 30);
    c_lerp_var_instance(feathermarker, "image_alpha", 1, 0, 30);
/// CODE
/// END

/// AFTER
    platcon = 1;
    con = -99;
}
/// CODE
if (con == 3 && global.flag[24] == 1)
    obj_platswap_statue.depth = 1500000;
/// END


