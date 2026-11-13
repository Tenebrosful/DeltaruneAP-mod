/// PATCH

/// REPLACE
if (skip_intro)
{
    if (global.interact == 0)
        global.interact = 1;
    
    if (skip_intro_con == 0 && !d_ex())
    {
        skip_intro_con = 1;
        scr_delay_var("skip_intro_con", 2, 15);
        blackall = scr_dark_marker(-10, -10, spr_pixel_white);
        blackall.image_xscale = 999;
        blackall.image_yscale = 999;
        blackall.depth = 100;
        blackall.image_blend = c_black;
        blackall.image_alpha = 0;
        blackall.visible = 1;
        
        with (blackall)
            scr_lerpvar("image_alpha", 0, 1, 60);
        
        mus_fade(global.currentsong[1], 60);
    }
    
    if (skip_intro_con == 2)
    {
        skip_intro_con = 3;
        scr_speaker("no_name");
        msgsetloc(0, "* (Just looking at the chair^1, your eyes began to close...)/%", "obj_ch4_PDC01B_slash_Step_0_gml_34_0");
        d_make();
    }
    
    if (skip_intro_con == 3 && !d_ex() && blackall.image_alpha == 1)
    {
        skip_intro_con = 4;
        scr_delay_var("skip_intro_con", 5, 60);
    }
    
    if (skip_intro_con == 5)
    {
        skip_intro_con = -1;
        scr_flag_set(1628, 1);
        global.plot = 105;
        snd_free_all();
        scr_become_dark();
        room_goto(room_dw_church_intro1);
    }
}
/// CODE
if (skip_intro > 0)
{
    if (global.interact == 0)
        global.interact = 1;
    
    if (skip_intro_con == 0 && !d_ex())
    {
        skip_intro_con = 1;
        scr_delay_var("skip_intro_con", 2, 15);
        blackall = scr_dark_marker(-10, -10, spr_pixel_white);
        blackall.image_xscale = 999;
        blackall.image_yscale = 999;
        blackall.depth = 100;
        blackall.image_blend = c_black;
        blackall.image_alpha = 0;
        blackall.visible = 1;
        
        with (blackall)
            scr_lerpvar("image_alpha", 0, 1, 60);
        
        mus_fade(global.currentsong[1], 60);
    }
    
    if (skip_intro_con == 2)
    {
        skip_intro_con = 3;
        scr_speaker("no_name");
        msgsetloc(0, "* (Just looking at the chair^1, your eyes began to close...)/%", "obj_ch4_PDC01B_slash_Step_0_gml_34_0");
        d_make();
    }
    
    if (skip_intro_con == 3 && !d_ex() && blackall.image_alpha == 1)
    {
        skip_intro_con = 4;
        scr_delay_var("skip_intro_con", 5, 60);
    }
    
    if (skip_intro_con == 5)
    {
        skip_intro_con = -1;
        snd_free_all();
        scr_become_dark();
        scr_flag_set(1628, 1);
        
        if (skip_intro == 1)
        {
            global.plot = 105;
            room_goto(room_dw_church_intro1);
        }
        else if (skip_intro == 2)
        {
            global.plot = 40;
            if (!scr_tenna_alt_plot())
            {
                if (scr_flag_get(779) < 2 && scr_flag_get(780) == 0)
                {
                    scr_flag_set(780, 1);
                }
            }

            room_goto(room_dw_castle_area_1);
        }
    }
}
/// END

/// BEFORE
if (con < 0)
    exit;
/// CODE
if (con == -1)
{
    if (global.customflags[global.custom_flags_indexes.light_world_reminder] == 0 && obj_mainchara.x < 432)
    {
        global.customflags[global.custom_flags_indexes.light_world_reminder] = 1;
        con = -2;
        global.interact = 1;
        scr_speaker("no_name");
        msgset(0, "\\s0* (You realize that while there \\cYmay be important story details ahead\\cW...)/");
        msgnext("\\s0* (There \\cYwon't be any check locations in the Light World\\cW.)/");
        msgnext("\\s0* (Also, you are able to \\cYsleep until Castle Town\\cW.)/");
        msgnext("* (You considered this carefully before leaving the temptation of the chair!)/%");
        d_make();
    }
}

if (con == -2 && !instance_exists(obj_dialoguer))
{
    global.interact = 0;
    con = -1;
}
/// END