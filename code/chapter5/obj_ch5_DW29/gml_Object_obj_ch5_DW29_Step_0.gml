/// PATCH

/// REPLACE
    c_speaker("flowery");
    c_fefc(0, 0);
    c_msgsetloc(0, "\\Vg* Kris..^1. Susie..^1. Ralsei./%", "obj_ch5_DW29_slash_Step_0_gml_129_0");
    c_talk_wait();
    c_wait(15);
    c_sel(fl);
    c_sprite(spr_flowery_float_head_down_right);
    c_halt();
    c_speaker("flowery_s");
    c_fefc(0, 0);
    c_msgsetloc(0, "* So you finally made it./", "obj_ch5_DW29_slash_Step_0_gml_136_0");
    c_msgnextloc("* The Fountain's just a step away now./", "obj_ch5_DW29_slash_Step_0_gml_137_0");
    c_msgnextloc("* Come here./%", "obj_ch5_DW29_slash_Step_0_gml_138_0");
    c_talk();
    c_wait_box(1);
    c_sel(fl);
    c_sprite(spr_flowery_float);
    c_imageindex(2);
    c_wait_box(2);
    c_sel(fl);
    c_sprite(spr_flowery_float_head_down_right);
/// CODE
    if (global.AP_current_route == global.AP_ENUM_CHOSEN_ROUTE.ALL_RECRUITS && !AP_all_recruits_acquired())
    {
        con = 50;
        c_speaker("flowery_s");
        c_fefc(0, 0);
        c_msgsetloc(0, "* Well^1, here we are./", "obj_ch5_DW29_slash_Step_0_gml_129_0");
        c_msgnextloc("* It's a shame^1, really./", "obj_ch5_DW29_slash_Step_0_gml_137_0");
        c_msgnextloc("\\s0* You three couldn't even recruit everyone./", "obj_ch5_DW29_slash_Step_0_gml_137_0");
        c_facenext("ralsei", "m");
        c_msgnextloc("* Get out of our way^1, Flowery./", "obj_ch5_DW29_slash_Step_0_gml_137_0");
        c_msgnextloc("* We need to seal the fountain./%", "obj_ch5_DW29_slash_Step_0_gml_137_0");
        c_talk();
        c_wait_talk();
        c_wait(15);
        c_sel(fl);
        c_sprite(spr_flowery_float_head_down_right);
        c_halt();
        c_speaker("flowery_s");
        c_fefc(0, 0);
        c_msgsetloc(0, "* And just leave all the darkners you didn't recruit behind?/", "obj_ch5_DW29_slash_Step_0_gml_137_0");
        c_facenext("ralsei", "R");
        c_msgnextloc("* It..^1. It doesn't matter!/%", "obj_ch5_DW29_slash_Step_0_gml_137_0");
        c_talk();
        c_wait_talk();
        c_wait(15);
        c_halt();
        c_speaker("flowery_s");
        c_fefc(0, 0);
        c_msgsetloc(0, "* What doesn't matter?/", "obj_ch5_DW29_slash_Step_0_gml_137_0");
        c_msgnextloc("* The hopes and dreams of those darkners?/", "obj_ch5_DW29_slash_Step_0_gml_137_0");
        c_msgnextloc("* You'll just toss the other darkners aside if they don't have use to you?/", "obj_ch5_DW29_slash_Step_0_gml_137_0");
        c_msgnextloc("* What happens when everything is all over^1, Raly?/", "obj_ch5_DW29_slash_Step_0_gml_137_0");
        c_msgnextloc("* Once your purpose is fulfilled?/", "obj_ch5_DW29_slash_Step_0_gml_137_0");
        c_msgnextloc("* Would you be okay with.../%", "obj_ch5_DW29_slash_Step_0_gml_137_0");
        c_talk();
        c_wait_box(3);
        c_sprite(spr_flowery_float_shrug_shake_right);
        c_wait_box(5);
        c_sprite(spr_flowery_float_head_down_right);
        c_wait_talk();
        c_sel(fl);
        c_sprite(spr_flowery_head_tilt_down);
        c_wait(15);
        c_halt();
        c_facenext("flowery", 0);
        c_fefc(0, 0);
        c_msgsetloc(0, "\\Vj* Being forgotten?/", "obj_ch5_DW29_slash_Step_0_gml_137_0");
        c_facenext("ralsei", "q");
        c_msgnextloc("* That's not..^1. I.../%", "obj_ch5_DW29_slash_Step_0_gml_137_0");
        c_talk();
        c_wait_talk();
        c_speaker("susie");
        c_msgsetloc(0, "\\E4* Hey^1, both of you^1, shut up./", "obj_ch5_DW29_slash_Step_0_gml_137_0");
        c_msgnextloc("\\ED* Everyone matters to someone./", "obj_ch5_DW29_slash_Step_0_gml_137_0");
        c_msgnextloc("\\E1* Ralsei^1, we're going back and getting those recruits./", "obj_ch5_DW29_slash_Step_0_gml_137_0");
        c_msgnextloc("\\E2* No one's getting left behind^1, remember?/", "obj_ch5_DW29_slash_Step_0_gml_137_0");
        c_facenext("ralsei", "r");
        c_msgnextloc("* Y... You're right./%", "obj_ch5_DW29_slash_Step_0_gml_137_0");
        c_talk();
        c_sel(fl);
        c_sprite(spr_flowery_float_head_down_right);
        c_wait_talk();
        c_sel(fl);
        c_sprite(spr_flowery_float_shrug_shake_right);
        c_speaker("flowery_s");
        c_fefc(0, 0);
        c_msgsetloc(0, "* You're a real hero^1, Susie^1. Raly could learn a thing or two./", "obj_ch5_DW29_slash_Step_0_gml_137_0");
        c_msgnextloc("* Once you recruit everyone^1, come over here./", "obj_ch5_DW29_slash_Step_0_gml_137_0");
        c_msgnextloc("* The fountain's waiting./%", "obj_ch5_DW29_slash_Step_0_gml_137_0");
        c_talk();
        c_wait_box(1);
        c_sel(fl);
        c_sprite(spr_flowery_float_head_down_right);
    }
    else
    {
        c_speaker("flowery");
        c_fefc(0, 0);
        c_msgsetloc(0, "\\Vg* Kris..^1. Susie..^1. Ralsei./%", "obj_ch5_DW29_slash_Step_0_gml_129_0");
        c_talk_wait();
        c_wait(15);
        c_sel(fl);
        c_sprite(spr_flowery_float_head_down_right);
        c_halt();
        c_speaker("flowery_s");
        c_fefc(0, 0);
        c_msgsetloc(0, "* So you finally made it./", "obj_ch5_DW29_slash_Step_0_gml_136_0");
        c_msgnextloc("* The Fountain's just a step away now./", "obj_ch5_DW29_slash_Step_0_gml_137_0");
        c_msgnextloc("* Come here./%", "obj_ch5_DW29_slash_Step_0_gml_138_0");
        c_talk();
        c_wait_box(1);
        c_sel(fl);
        c_sprite(spr_flowery_float);
        c_imageindex(2);
        c_wait_box(2);
        c_sel(fl);
        c_sprite(spr_flowery_float_head_down_right);
    }
/// END

/// APPEND

if (con == 50 && obj_mainchara.x > 600)
{
    global.interact = 1;
    obj_mainchara.x = 600;
    con = 51;
    scr_speaker("susie");
    msgsetloc(0, "\\E1* Nope^1. Let's get those recruits./%", "obj_ch5_DW29_slash_Step_0_gml_137_0");
    d_make();
}

if (con == 51 && !d_ex())
{
    global.interact = 0;
    obj_mainchara.x = 600;
    con = 50;
}
/// END