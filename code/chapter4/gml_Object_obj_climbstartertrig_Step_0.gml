/// PATCH

/// REPLACE
    scr_speaker("no_name");
    msgsetloc(0, "* (It looks like you'd be able to climb this if you had the right tools.)/%", "obj_climbstartertrig_slash_Step_0_gml_15_0");
    d_make();
    myinteract = 401;
/// CODE
    global.choice = -1;
    
    if (scr_keyitemcheck(31) && global.maxhp[2] <= 0 && global.customflags[global.custom_flags_indexes.accepted_dark_sanctuary_skip] == 0)
    {
        global.msc = 2002;
        scr_text(global.msc);
        d_make();
        myinteract = 402;
    }
    else if (scr_keyitemcheck(31) && scr_havechar(3) == 0 && room == room_dw_church_intropiano)
    {
        global.msc = 2000;
        scr_text(global.msc);
        d_make();
        myinteract = 401;
    }
    else
    {
        scr_speaker("no_name");
        msgsetloc(0, "* (It looks like you'd be able to climb this if you had the right tools.)/%", "obj_climbstartertrig_slash_Step_0_gml_15_0");
        d_make();
        myinteract = 401;
    }
/// END

/// REPLACE
if (myinteract == 401 && !d_ex())
{
    global.interact = 0;
    myinteract = 0;
}
/// CODE
if (myinteract == 401 && !d_ex())
{
    if (global.choice == 0)
        con = 1;
    else
        global.interact = 0;
    
    myinteract = 0;
}

if (myinteract == 402 && !d_ex())
{
    global.interact = 0;
    myinteract = 0;
}

if (con == 1)
{
    global.interact = 1;
    cutscene_master = scr_cutscene_make();
    scr_maincharacters_actors();
    scr_setparty(1, 1);
    con = 1.1;
}

if (con == 1.1)
{
    con = 2;
    global.facing = 0;
    obj_mainchara.visible = 0;
    
    with (obj_caterpillarchara)
        visible = 0;
    
    debug_print("this");
    printval("version");
    c_sel(kr);
    c_facing("d");
    c_sel(su);
    c_facing("d");
    c_walkdirect(su_actor.x, 244, 32);
    c_wait(32);
    c_facing("r");
    c_walkdirect(1800, 244, 64);
    c_wait(32);
    c_fadeout(32);
    c_wait(64);
    c_fadein(32);
    c_wait(32);
    ra = actor_count + 2;
    ra_actor = instance_create(1800, 244, obj_actor);
    scr_actor_setup(ra, ra_actor, "ralsei");
    ra_actor.sprite_index = spr_ralsei_left;
    c_sel(su);
    c_facing("l");
    c_walkdirect(kr_actor.x - 40, 244, 64);
    c_wait(10);
    c_sel(ra);
    c_facing("l");
    c_walkdirect(kr_actor.x + 40, 244, 54);
    c_wait(54);
    c_sel(su);
    c_facing("u");
    c_sel(ra);
    c_facing("u");
    c_msgside("bottom");
    c_speaker("ralsei");
    c_msgsetloc(0, "\\EJ* Kris^1!&* There you are!/", "obj_ch4_DCA08A_slash_Step_0_gml_70_0");
    c_facenext("susie", "7");
    c_msgnextloc("\\E7* Kris^1!&* Sorry we took so long./", "obj_ch4_DCA08A_slash_Step_0_gml_70_0");
    c_msgnextloc("\\E4* I found the Knight^1, and they tried to kill me,/", "obj_ch4_DCA08A_slash_Step_0_gml_70_0");
    c_msgnextloc("\\EA* But I found Ralsei there^1, and there was like a prophecy./", "obj_ch4_DCA08A_slash_Step_0_gml_70_0");
    c_msgnextloc("\\EA* We also met this old man^1, who was actually really cool./", "obj_ch4_DCA08A_slash_Step_0_gml_70_0");
    c_msgnextloc("\\E3* He was writing this letter^1, and he taught me some stuff^1, and.../", "obj_ch4_DCA08A_slash_Step_0_gml_70_0");
    c_msgnextloc("\\EL* Uhh^1, well^1, I'll tell you more about it later./", "obj_ch4_DCA08A_slash_Step_0_gml_70_0");
    c_facenext("ralsei", "0");
    c_msgnextloc("\\E0* Susie's point is that the fountain is up there./", "obj_ch4_DCA08A_slash_Step_0_gml_70_0");
    c_msgnextloc("\\E2* Now that we're all here^1, we can go seal it./", "obj_ch4_DCA08A_slash_Step_0_gml_70_0");
    c_facenext("susie", "2");
    c_msgnextloc("\\E2* Right^1! Let's go./%", "obj_ch4_DCA08A_slash_Step_0_gml_70_0");
    c_talk();
    c_wait_box(3);
    c_sel(ra);
    c_facing("l");
    c_sel(su);
    c_sprite(spr_susie_head_scratch_dw);
    c_wait_box(8);
    c_sel(su);
    c_sprite(spr_susie_walk_up_dw);
    c_sel(ra);
    c_facing("u");
    c_wait_talk();
    c_actortokris();
    c_actortocaterpillar();
    c_terminatekillactors();
}

if (con == 2 && !i_ex(obj_cutscene_master))
{
    global.interact = 0;
    global.customflags[global.custom_flags_indexes.skipped_dark_sanctuary] = 1;
    con = 99;
}

if (con == 99 && obj_mainchara.x >= 1720 && obj_mainchara.x >= 200 && obj_mainchara.x <= 1740 && global.interact == 0)
{
    con = 100;
    global.interact = 1;
    scr_speaker("none");
    msgsetloc(0, "* (No reason to go over there.)/%", "obj_ch2_scene6_slash_Step_0_gml_11_0");
    d_make();
    obj_mainchara.x = 1719;
}

if (con == 100 && !d_ex())
{
    global.interact = 0;
    con = 99;
}
/// END
