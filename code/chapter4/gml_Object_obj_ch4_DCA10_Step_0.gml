/// PATCH

/// REPLACE
            if (place_meeting(x, y, obj_mainchara))
                trig = 1;
/// CODE
            if (place_meeting(x, y, obj_mainchara))
            {
                if (global.AP_secret_bosses_mandatory && global.customflags[32] == 0)
                    trig = 2;
                else
                    trig = 1;
            }
/// END

/// AFTER
    if (trig == 1)
        con = 1;
/// CODE
    
    if (trig == 2)
        con = 101;
/// END

/// APPEND

if (con == 101)
{
    con = 110;
    global.interact = 1;
    gerson_npc = instance_find(obj_npc_gerson, 0);
    
    with (obj_dw_gerson_study)
        paper_marker.visible = 0;
    
    cutscene_master = scr_cutscene_make();
    scr_maincharacters_actors();
    global.facing = 0;
    var actpos = scr_heromarker("kr", "end1");
    var krwalktime = scr_calculate_move_distance(obj_mainchara.x, obj_mainchara.y, actpos[0], actpos[1], 4);
    c_sel(kr);
    c_walkdirect(actpos[0], actpos[1], krwalktime);
    c_sel(su);
    var suwalktime = scr_calculate_move_distance(susie.x, susie.y, actpos[0], actpos[1], 6);
    actpos = scr_heromarker("su", "end1");
    c_walkdirect(actpos[0], actpos[1], suwalktime);
    c_sel(ra);
    var rawalktime = scr_calculate_move_distance(ralsei.x, ralsei.y, actpos[0], actpos[1], 6);
    actpos = scr_heromarker("ra", "end1");
    c_walkdirect(actpos[0], actpos[1], rawalktime);
    c_pannable(1);
    c_pan(160, cameray(), krwalktime);
    c_wait(max(krwalktime, suwalktime, rawalktime) + 1);
    c_sel(kr);
    c_facing("u");
    c_sel(ra);
    c_facing("u");
    c_sel(su);
    c_facing("u");
    c_wait(20);
    c_speaker("susie");
    c_msgsetloc(0, "\\E2* Alright^1, we're finally almost back to the fountain.../%", "obj_ch4_DCA10_slash_Step_0_gml_92_0");
    c_talk_wait();
    c_wait(15);
    c_sel(kr);
    c_facing("d");
    c_sel(ra);
    c_facing("d");
    c_emote("!", 30);
    c_sel(su);
    c_facing("d");
    c_emote("!", 30);
    c_msgside("top");
    c_speaker("gerson");
    c_msgsetloc(0, "* Wait a second there!/", "obj_ch4_DCA10_slash_Step_0_gml_108_0");
    c_msgnextloc("* Don't you want to get the Magic Axe first?/", "obj_ch4_DCA10_slash_Step_0_gml_109_0");
    c_facenext("susie", 2);
    c_msgnextloc("\\E2* C'mon Kris^1, we can't say no to a new axe./%", "obj_ch4_DCA10_slash_Step_0_gml_304_0");
    c_talk();
    c_wait_talk();
    c_sel(kr);
    c_walkdirect_wait(320, 260, 30);
    c_pannable(1);
    c_panobj(kr_actor, 20);
    c_wait(21);
    c_sel(kr);
    c_facing("d");
    c_pannable(0);
    c_actortokris();
    c_actortocaterpillar();
    c_terminatekillactors();
}

if (con == 110 && !i_ex(obj_cutscene_master))
{
    con = 0;
    global.interact = 0;
    global.facing = 0;
}
/// END