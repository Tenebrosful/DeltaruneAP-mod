/// IMPORT
if (shrubcon == 0)
{
    var trig = false;
    
    with (shrubshearieNPC)
    {
        if (myinteract == 3)
            trig = true;
    }
    
    if (trig == true)
    {
        global.interact = 1;
        shrubshearieNPC.myinteract = 0;
        scr_speaker("no_name");
        msgsetloc(0, "* (Clip..^1. clip...)/", "obj_dw_garden_shearyguide_slash_Other_19_gml_15_0");
        msgnextloc("* (She's totally absorbed in her work.)/", "obj_dw_garden_shearyguide_slash_Other_19_gml_16_0");
        var opt1 = stringsetloc("Looks bad", "obj_dw_garden_shearyguide_slash_Other_19_gml_17_0");
        var opt2 = stringsetloc("Looks amazing", "obj_dw_garden_shearyguide_slash_Other_19_gml_18_0");
        var opt3 = stringsetloc("Leave her", "obj_dw_garden_shearyguide_slash_Other_19_gml_19_0");
        scr_readychoicer(opt1, opt2, opt3);
        d_make();
        shrubcon = 1;
    }
}

if (shrubcon == 100)
{
    var trig = false;
    
    with (shrubshearieNPC)
    {
        if (myinteract == 3)
            trig = true;
    }
    
    if (trig == true)
    {
        global.interact = 1;
        shrubshearieNPC.myinteract = 0;
        scr_speaker("no_name");
        msgsetloc(0, "* (It has seen better days...)/%", "obj_dw_garden_shearyguide_slash_Other_19_gml_15_0");
        d_make();
        shrubcon = 101;
    }
}

if (shrubcon == 1 && global.choice != -1)
{
    k_d();
    
    if (global.choice == 0)
        shrubcon = 10;
    
    if (global.choice == 1)
        shrubcon = 20;
    
    if (global.choice == 2)
        shrubcon = 99;
}

if (shrubcon == 10 || shrubcon == 20)
{
    scr_cutscene_make();
    scr_maincharacters_actors();
    var krstart = kr_actor;
    var rastart = su_actor;
    var sustart = ra_actor;
    var lay = "SHRUB_ASSETS";
    var kr1 = findspriteinfo(spr_krisu_dark, lay);
    var su1 = findspriteinfo(spr_susie_walk_up_dw, lay);
    var ra1 = findspriteinfo(spr_ralseiu, lay);
    var krwait = scr_returnwait_instance(krstart, kr1, 4);
    var suwait = scr_returnwait_instance(sustart, su1, 4);
    var rawait = scr_returnwait_instance(rastart, ra1, 4);
    var cam = findspriteinfo(spr_debug_cameraregionpreview, lay);
    c_pannable(1);
    c_pan(cam.x, cam.y, max(krwait, suwait, rawait));
    c_sel(kr);
    c_walkto(kr1, krwait, "u");
    c_sel(su);
    c_walkto(su1, suwait, "u");
    c_sel(ra);
    c_walkto(ra1, rawait, "u");
    c_wait(max(krwait, suwait, rawait));
    
    if (shrubcon == 10)
        shrubcon = 11;
    else if (shrubcon == 20)
        shrubcon = 21;
}

if (shrubcon == 11)
{
    shrubcon = 12;
    c_wait(15);
    c_customfunc(function()
    {
        with (obj_dw_garden_shearyguide)
        {
            with (shrubshearie)
                starttwirl();
        }
    });
    c_wait(60);
    c_customfunc(function()
    {
        with (obj_dw_garden_shearyguide)
        {
            with (shrubshearie)
                endtwirl();
            
            with (shrub)
                doKris();
        }
    });
    c_wait(15);
    c_customfunc(function()
    {
        tempface = scr_marker_fancy(0, 0, 268);
        
        with (tempface)
        {
            image_index = 8;
            image_speed = 0;
            
            if (!ralseiHatState())
            {
                sprite_index = spr_face_r_nohat;
                image_index = 19;
            }
            
            con = 0;
            dodraw = false;
            
            step_func = function()
            {
                if (con == 0)
                {
                    if (instance_exists(obj_face))
                    {
                        con = 1;
                        dodraw = 1;
                        x = obj_face.x + 504;
                        y = (obj_face.y - 10) + 2;
                    }
                }
                
                if (con == 1 && !instance_exists(obj_face))
                {
                    dodraw = false;
                    instance_destroy();
                }
            };
            
            draw_func = function()
            {
                if (dodraw)
                    draw_sprite_ext(sprite_index, image_index, x, y, -2, 2, 0, c_white, 1);
            };
        }
        
        global.typer = 79;
        global.fc = 1;
        msgsetloc(0, "\\E7* Oh^1, that's way\nbetter!/%", "obj_dw_garden_shearyguide_slash_Other_19_gml_136_0");
    });
    c_talk_wait();
    c_customfunc(function()
    {
        with (obj_dw_garden_shearyguide)
        {
            with (shrubshearie)
                starttwirl();
        }
    });
    c_wait(30);
    c_customfunc(function()
    {
        with (obj_dw_garden_shearyguide)
        {
            with (shrubshearie)
                endtwirl();
        }
    });
    c_wait(20);
    c_customfunc(function()
    {
        with (obj_dw_garden_shearyguide)
        {
            with (shrub)
                cutKris();
        }
    });
    c_wait(30);
    c_speaker("susie");
    c_msgsetloc(0, "\\EZ* .../%", "obj_dw_garden_shearyguide_slash_Other_19_gml_165_0");
    c_talk_wait();
    c_wait(15);
    c_customfunc(function(arg0)
    {
        var played_alert_sound = false;
        global.interact = 0;
        
        with (obj_mainchara)
            freeze = 1;
        
        global.flag[7] = 1;
        var enemy = instance_create(arg0.x, arg0.y, obj_chaseenemy);
        
        if (played_alert_sound)
            enemy.noAlertSound = 1;
        
        played_alert_sound = true;
        enemy.radius = 999999;
        enemy.sprite_index = arg0.sprite_index;
        enemy.touchsprite = arg0.sprite_index;
        enemy.largetouchregion = 60;
        enemy.encounterflag = 0;
        enemy.myencounter = 205;
        enemy.ignoresolid = true;
        enemy.chasetype = 7;
        enemy.alertcon = 1;
        instance_destroy(arg0);
        
        with (obj_darkcontroller)
            charcon = 0;
    }, shrubshearie);
    c_wait(25);
    c_customfunc(function()
    {
        with (obj_scissor_flower_chaser_scissor)
            bulletzone_active = false;
        
        global.specialbattle = 3;
        
        with (obj_dw_garden_shearyguide)
            waitforbattle = 1;
    }, []);
    c_actortokris();
    c_actortocaterpillar();
    c_terminatekillactors();
}

if (shrubcon == 12 && waitforbattle > 0)
{
    if (i_ex(obj_battlecontroller))
    {
        with (obj_chaseenemy)
            instance_destroy();
    }
    
    waitforbattle++;
    
    if (waitforbattle > 70 && !i_ex(obj_battlecontroller))
    {
        waitforbattle = false;
        shrubcon = 13;
        scr_debug_print("continue");
        scr_delay_var("shrubcon", 14, 2);
        global.interact = 1;
        cutscene_master = scr_cutscene_make();
        c_pannable(1);
        c_wait(10);
        c_panobj(1200, 15);
        c_wait(15);
        c_pannable(0);
        c_globalvar("facing", 3);
        c_actortokris();
        c_actortocaterpillar();
        c_terminatekillactors();
    }
}

if (shrubcon == 14 && !i_ex(obj_cutscene_master))
{
    global.interact = 0;
    global.flag[7] = 0;
    shrubcon = 102;
    
    with (obj_mainchara)
    {
        drawbattlemode = 1;
        cutscene = 0;
        freeze = 0;
    }
    
    global.facing = 4;
    
    with (obj_scissor_flower_chaser_scissor)
        bulletzone_active = 1;
}

if (shrubcon == 102 && !instance_exists(obj_cutscene_master))
{
    global.interact = 0;
    shrubcon = 100;
}

if (shrubcon == 101 && !d_ex())
{
    global.interact = 0;
    shrubcon = 100;
}

if (shrubcon == 21)
{
    shrubcon = 99;
    c_wait(15);
    c_speaker("ralsei");
    c_msgsetloc(0, "\\E7* Y-You..^1. really think so^1, Kris^1? Umm.../", "obj_dw_garden_shearyguide_slash_Other_19_gml_201_0");
    c_msgnextloc("\\E8* Well^1, I suppose I can't help being a cute subject!/%", "obj_dw_garden_shearyguide_slash_Other_19_gml_202_0");
    
    if (!ralseiHatState())
    {
        c_customfunc(function()
        {
            global.msg[0] = string_replace(global.msg[0], "\\E7", "\\E1");
            global.msg[1] = string_replace(global.msg[1], "\\E8", "\\E2");
        });
    }
    
    c_talk();
    c_wait_msg(1);
    c_customfunc(function()
    {
        with (obj_dw_garden_shearyguide)
        {
            with (shrubshearie)
                starttwirl();
        }
    });
    c_wait(15);
    c_wait_talk();
    c_customfunc(function()
    {
        with (obj_dw_garden_shearyguide)
        {
            with (shrub)
                growhead(32);
        }
    });
    c_wait(32);
    c_customfunc(function()
    {
        with (obj_dw_garden_shearyguide)
        {
            with (shrubshearie)
                endtwirl();
        }
    });
    c_sel(ra);
    c_autowalk(false);
    
    if (ralseiHatState())
        c_sprite(spr_ralsei_shocked_behind_hat);
    else
        c_sprite(spr_ralsei_shocked_behind);
    
    c_shakeobj(ra_actor);
    c_sndplay(snd_wing);
    c_wait(60);
    c_sel(ra);
    c_autowalk(true);
    c_facing("u");
    c_speaker("susie");
    c_msgsetloc(0, "\\E9* Pfffhaha.../", "obj_dw_garden_shearyguide_slash_Other_19_gml_248_0");
    c_msgnextloc("\\E2* Big head./%", "obj_dw_garden_shearyguide_slash_Other_19_gml_250_0");
    c_talk_wait();
    c_wait(15);
    c_customfunc(function()
    {
        with (obj_dw_garden_shearyguide)
        {
            with (shrubshearie)
                starttwirl();
        }
    });
    c_wait(15);
    c_customfunc(function()
    {
        with (obj_dw_garden_shearyguide)
        {
            with (shrub)
                scr_lerpvar("image_index", 3, 0, 15, 2, "in");
        }
    });
    c_wait(15);
    c_customfunc(function()
    {
        with (obj_dw_garden_shearyguide)
        {
            with (shrubshearie)
                endtwirl();
            
            with (shrub)
                doRalsei();
        }
    });
    c_customfunc(function()
    {
        global.facing = 0;
    });
    c_panobj(kr_actor, 15);
    c_wait(16);
    c_pannable(0);
    c_actortokris();
    c_actortocaterpillar();
    c_terminatekillactors();
}

if (shrubcon == 99 && !instance_exists(obj_cutscene_master))
{
    shrubcon = 0;
    global.interact = 0;
}

with (umb1)
{
    if (myinteract == 3)
    {
        marker.image_index = 1;
        snd_play(snd_wing);
        x = room_width * 4;
        global.interact = 1;
        scr_speaker("no_name");
        msgsetloc(0, "* Yo^1! These scissors cut anything in the way./", "obj_dw_garden_shearyguide_slash_Other_19_gml_306_0");
        msgnextloc("* If they can't find anything to cut^1, they'll turn right a few times./", "obj_dw_garden_shearyguide_slash_Other_19_gml_307_0");
        msgnextloc("* ..^1. if they still can't find anything^1, they'll go back to the start./", "obj_dw_garden_shearyguide_slash_Other_19_gml_308_0");
        msgnextloc("* Got it^1? Good^1, 'cause I got places to be./%", "obj_dw_garden_shearyguide_slash_Other_19_gml_309_0");
        d_make();
        myinteract = 4;
    }
    
    if (myinteract == 4 && !d_ex())
    {
        with (marker)
        {
            snd_play(snd_wing);
            gravity = 1.8;
            vspeed = -10;
            scr_lerpvar("gravity", gravity, -0.7, 20);
            scr_lerpvar("hspeed", 0, -8, 30, 2, "in");
            var waittime = 6;
            delay_function(function()
            {
                snd_play(snd_helicopter);
                sprite_index = spr_npc_umbrellayokai_flyaway_garden;
                image_speed = 0.5;
            }, waittime);
            scr_doom(id, 180);
        }
        
        myinteract = 99;
        global.interact = 0;
        instance_destroy();
    }
}

with (umb2)
{
    if (myinteract == 3)
    {
        marker.image_index = 1;
        snd_play(snd_wing);
        x = room_width * 4;
        global.interact = 1;
        scr_speaker("no_name");
        scr_speaker("no_name");
        msgsetloc(0, "* Yo^1! Didn't think these shrubs made themselves^1, did ya?/", "obj_dw_garden_shearyguide_slash_Other_19_gml_351_0");
        msgnextloc("* These ladies here are artistes^1! Anything they clip is their art.../", "obj_dw_garden_shearyguide_slash_Other_19_gml_352_0");
        msgnextloc("* ..^1. Don't get in their way^1, or you might become \"art\" too!/%", "obj_dw_garden_shearyguide_slash_Other_19_gml_353_0");
        d_make();
        myinteract = 4;
    }
    
    if (myinteract == 4 && !d_ex())
    {
        with (marker)
        {
            snd_play(snd_wing);
            gravity = 1.8;
            vspeed = -10;
            scr_lerpvar("gravity", gravity, -0.7, 20);
            scr_lerpvar("hspeed", 0, 8, 30, 2, "in");
            var waittime = 6;
            delay_function(function()
            {
                snd_play(snd_helicopter);
                sprite_index = spr_npc_umbrellayokai_flyaway_garden;
                image_speed = 0.5;
            }, waittime);
            scr_doom(id, 180);
        }
        
        myinteract = 99;
        global.interact = 0;
        instance_destroy();
    }
}
