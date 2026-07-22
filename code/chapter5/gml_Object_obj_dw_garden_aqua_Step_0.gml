/// IMPORT
function makeknives()
{
    for (var i = 0; i < array_length(knives); i++)
        instance_destroy(knives[i]);
    
    knives = [];
    var target = findspriteinfo(spr_aqua_walk_down, "CUTSCENE2_ASSETS_2", #47E6FF);
    target.x += sprite_get_width(target.sprite_index);
    var count = 7;
    snd_free_all();
    snd_play(snd_swing, 0.7, 0.7);
    snd_play(snd_swing, 0.6, 1.8);
    
    for (var i = 0; i < count; i++)
    {
        var angle = ((i + 1) * (180 / count)) - 10;
        var dist = 60;
        var xloc = target.x + lengthdir_x(dist * 2, angle);
        var yloc = target.y + lengthdir_y(dist * 3, angle);
        var endxloc = target.x + lengthdir_x(dist + 30, angle);
        var endyloc = target.y + lengthdir_y(dist + 12, angle);
        knives[i] = scr_marker_ext(xloc, yloc, spr_attack_knifefan, 1, 1);
        
        with (knives[i])
        {
            image_alpha = 0;
            image_angle = point_direction(xloc, yloc, camerax() + 320, cameray() + 480) + 180;
            scr_lerpvar("x", x, endxloc, 8, -1, "out");
            scr_lerpvar("y", y, endyloc, 8, 2, "out");
            scr_lerpvar("image_alpha", 0, 1, 4);
            show_debug_message_concat(4 + (i * 2));
        }
        
        with (aqua)
        {
            sprite_index = spr_aqua_laugh;
            image_index = 0;
            image_speed = 0.16666666666666666;
        }
    }
}

function floradinambush()
{
    fl_left = scr_marker_fromasset(findsprite(spr_enemy_floradin, "CUTSCENE2_ASSETS_2", #AAAAAA), undefined, 1);
    fl_right = scr_marker_fromasset(findsprite(spr_enemy_floradin, "CUTSCENE2_ASSETS_2", #BBBBBB), undefined, 1);
    fl_left.image_blend = c_white;
    fl_left.image_speed = 0;
    fl_right.image_blend = c_white;
    fl_right.image_speed = 0;
    
    with (fl_left)
    {
        show_debug_message_concat("fl_left depth=", depth);
        var target = findspriteinfo(spr_enemy_floradin, "CUTSCENE2_ASSETS_3", #EAAAAA);
        gravity = 1.8;
        vspeed = -16;
        var falltime = scr_returnwait_gravity(id, y, y, gravity, vspeed);
        show_debug_message_concat(falltime);
        scr_delay_var("gravity", 0, falltime);
        scr_delay_var("vspeed", 0, falltime);
        scr_lerpvar("x", x, target.x, falltime - 1);
        scr_limitval_upper(id, "y", y, falltime + 2);
        scr_script_delayed(scr_flip, falltime, "h");
    }
    
    with (fl_right)
    {
        var target = findspriteinfo(spr_enemy_floradin, "CUTSCENE2_ASSETS_3", #EDDDDD);
        gravity = 1.8;
        vspeed = -16;
        var falltime = scr_returnwait_gravity(id, y, y, gravity, vspeed);
        scr_delay_var("gravity", 0, falltime);
        scr_delay_var("vspeed", 0, falltime);
        scr_lerpvar("x", x, target.x, falltime - 1);
        scr_limitval_upper(id, "y", y, falltime + 2);
        scr_script_delayed(scr_flip, falltime, "h");
        depth = other.ra_actor.depth + 10;
    }
}

function aquajumptoplace(arg0, arg1 = 0, arg2 = 8, arg3 = 1, arg4 = -12)
{
    with (aqua)
    {
        sprite_index = spr_aqua_spin;
        image_index = arg1;
        image_speed = 0;
        gravity = arg3;
        vspeed = arg4;
        var jumptime = scr_returnwait_gravity(id, y, arg0.y, gravity, vspeed);
        scr_delay_var("gravity", 0, jumptime - 1);
        scr_delay_var("vspeed", 0, jumptime - 1);
        scr_lerpvar("x", x, arg0.x, jumptime - 1);
        scr_lerpvar("image_index", arg1, arg2, jumptime);
        scr_delay_var("x", arg0.x, jumptime);
        scr_delay_var("y", arg0.y, jumptime);
        snd_play(snd_petal_recover, 0.7, 1);
        snd_play(snd_petal_recover, 0.7, 1.2);
        snd_play_delay(snd_wing, jumptime, 0.7, 1.4);
        
        with (obj_dw_garden_aqua)
        {
            if (!dojumping)
                scr_delay_var("endcustom", 1, jumptime + 1);
            
            scr_delay_var("landed", 1, jumptime + 1);
        }
    }
}

if (dojumping)
{
    var target = findspriteinfo(spr_aqua_walk_down, "CUTSCENE2_ASSETS_2", #47E6FF);
    
    if (landed)
    {
        var frames = [0, 8];
        
        if (endjumping)
            dojumping = false;
        else if (aqua.x < target.x)
            target.x += random_range(50, 80);
        else
            target.x -= random_range(50, 80);
        
        if (target.x > aqua.x)
            frames = [8, 0];
        
        aquajumptoplace(target, frames[0], frames[1], 1.5, -12);
        landed = false;
    }
}

scr_populatechars();

if (!init)
    init = 1;

if (con == 0)
{
    if (scr_trigcheck("cut1"))
    {
        global.interact = 1;
        global.facing = 2;
        con = 1;
    }
}

if (con == 1)
{
    scr_cutscene_make();
    c_msgruncheck(true);
    c_speaker("seth");
    c_msgsetloc(0, "* You hear me^1? Make sure they don't get past here and find that FEATHER./", "obj_dw_garden_aqua_slash_Step_0_gml_185_0");
    c_facenext("no_name", 0);
    c_msgnextloc("* Why?/", "obj_dw_garden_aqua_slash_Step_0_gml_187_0");
    c_facenext("seth", 0);
    c_msgnextloc("* Because..^1. it'll let them get to the next area!/", "obj_dw_garden_aqua_slash_Step_0_gml_189_0");
    c_facenext("no_name", 0);
    c_msgnextloc("* Why?/", "obj_dw_garden_aqua_slash_Step_0_gml_191_0");
    c_facenext("seth", 0);
    c_msgnextloc("* Because..^1. because..^1. that's what HE said!/", "obj_dw_garden_aqua_slash_Step_0_gml_193_0");
    c_facenext("no_name", 0);
    c_msgnextloc("* Why?/", "obj_dw_garden_aqua_slash_Step_0_gml_195_0");
    c_facenext("seth", 0);
    c_msgnextloc("* Look^1! They're coming this way^1! I have to go^1, just make sure they don't get past!/%", "obj_dw_garden_aqua_slash_Step_0_gml_197_0");
    c_talk();
    c_wait_box(0);
    c_customfunc(function()
    {
        with (seth)
            sprite_index = spr_seth_blush;
    });
    c_wait_box(2);
    c_customfunc(function()
    {
        with (aqua)
            sprite_index = spr_aqua_walk_up;
    });
    c_wait_box(4);
    c_customfunc(function()
    {
        with (seth)
            sprite_index = spr_seth_walk_right;
    });
    c_wait_box(6);
    c_customfunc(function()
    {
        with (aqua)
            sprite_index = spr_aqua_walk_left;
    });
    c_wait_box(8);
    c_customfunc(function()
    {
        with (seth)
            sprite_index = spr_seth_walk_down;
    });
    c_wait_box(10);
    c_customfunc(function()
    {
        with (aqua)
            sprite_index = spr_aqua_laugh;
    });
    c_wait_box(12);
    c_customfunc(function()
    {
        with (seth)
            sprite_index = spr_seth_panic;
    });
    c_wait_talk();
    c_customfunc(function()
    {
        with (seth)
        {
            sprite_index = spr_seth_walk_left;
            image_speed = 0.25;
            hspeed = -8;
            scr_doom(id, 180);
        }
        
        with (aqua)
        {
            var targ = findspriteinfo(spr_aqua_walk_down, "CUTSCENE2_ASSETS_2", #47E6FF);
            var dist = scr_returnwait_instance(targ, id, 4);
            scr_lerpvar("x", x, targ.x, dist);
            sprite_index = spr_aqua_walk_left;
            image_speed = 0.25;
            scr_delay_var("sprite_index", 7752, dist + 1);
            scr_delay_var("image_speed", 0, dist + 1);
            scr_delay_var("image_index", 0, dist + 1);
        }
    });
    c_terminatekillactors();
    con = 2;
}

if (con == 2 && !instance_exists(obj_cutscene_master))
{
    global.facing = 0;
    global.interact = 0;
    global.plot = 291;
    con = 3;
}

if (con == 3)
{
    if (scr_trigcheck("cut2"))
    {
        con = 4;
        global.interact = 1;
    }
}

if (con == 4)
{
    con = -1;
    scr_cutscene_make();
    scr_maincharacters_actors();
    c_pannable(1);
    var campos = findspriteinfo(spr_debug_cameraregionpreview, "CUTSCENE2_ASSETS_1", #B05100);
    c_pan_fancy(campos.x, campos.y, 20);
    var krpos1 = findspriteinfo(spr_debug_krmarker, "CUTSCENE2_ASSETS_1", #FFFF87);
    var supos1 = findspriteinfo(spr_debug_sumarker, "CUTSCENE2_ASSETS_1", #FFFF87);
    var rapos1 = findspriteinfo(spr_debug_ramarker, "CUTSCENE2_ASSETS_1", #FFFF87);
    var walkspd = 6;
    var krwait1 = scr_returnwait_instance(kr_actor, krpos1, walkspd);
    var suwaitx = max(round(abs(supos1.x - su_actor.x) / walkspd), 1);
    var rawaitx = max(round(abs(rapos1.x - ra_actor.x) / walkspd), 1);
    var suwaity = max(round(abs(supos1.y - su_actor.y) / walkspd), 1);
    var rawaity = max(round(abs(rapos1.y - ra_actor.y) / walkspd), 1);
    var suwait1 = suwaitx + suwaity;
    var rawait1 = rawaitx + rawaity;
    c_sel(kr);
    c_autodepth(0);
    c_depth(96720);
    c_walkdirect(krpos1.x, krpos1.y, krwait1);
    c_delayfacing(krwait1 + 1, "u");
    c_sel(ra);
    c_autodepth(0);
    c_depth(96700);
    c_walkdirect(ra_actor.x, rapos1.y, rawaity);
    c_delaywalkdirect(rawaity + 1, rapos1.x, rapos1.y, rawaitx);
    c_delayfacing(rawaity + rawaitx + 1, "u");
    c_sel(su);
    c_walkdirect(su_actor.x, supos1.y, suwaity);
    c_delaywalkdirect(suwaity + 1, supos1.x, supos1.y, suwaitx);
    c_delayfacing(suwaity + suwaitx + 1, "u");
    c_autodepth(0);
    c_depth(96710);
    c_wait(max(krwait1, suwait1, rawait1));
    c_customfunc(function()
    {
        snd_volume(global.currentsong[1], 0, 15);
    });
    c_wait(15);
    c_sel(kr);
    c_autodepth(1);
    c_sel(ra);
    c_autodepth(1);
    c_sel(su);
    c_autodepth(1);
    
    if (global.tempflag[51] == 0)
    {
        c_msgside("bottom");
        c_speaker("ralsei");
        c_msgsetloc(0, "\\E8* ..^1. hello there./%", "obj_dw_garden_aqua_slash_Step_0_gml_309_0");
        c_talk_wait();
        c_customfunc(function()
        {
            aqua.sprite_index = spr_aqua_walk_down;
        });
        c_wait(15);
        c_speaker("no_name");
        c_msgsetloc(0, "* Oh^1, some fellow humans!/%", "obj_dw_garden_aqua_slash_Step_0_gml_321_0");
        c_talk_wait();
        c_customfunc(function()
        {
            var target = findspriteinfo(spr_aqua_walk_down, "CUTSCENE2_ASSETS_2", #47E6FF);
            aquajumptoplace(target, 8, 0);
        });
        c_waitcustom();
        c_customfunc(function()
        {
            with (aqua)
            {
                sprite_index = spr_aqua_sleevewave;
                image_index = 0;
                image_speed = 0.25;
            }
        });
        c_wait(30);
        c_customfunc(function()
        {
            snd_free_all();
            scr_musicer("meeting_flower.ogg");
        });
        c_speaker("no_name");
        c_msgsetloc(0, "* I see you have naturally blue skin just like me./%", "obj_dw_garden_aqua_slash_Step_0_gml_351_0");
        c_talk_wait();
        c_customfunc(function()
        {
            var target = findspriteinfo(spr_aqua_walk_down, "CUTSCENE2_ASSETS_2", #CA1EFF);
            aquajumptoplace(target, 8, 0);
        });
        c_waitcustom();
        c_speaker("no_name");
        c_msgsetloc(0, "* Purple skin and teeth^1, just like my friend./%", "obj_dw_garden_aqua_slash_Step_0_gml_362_0");
        c_talk_wait();
        c_customfunc(function()
        {
            var target = findspriteinfo(spr_aqua_walk_down, "CUTSCENE2_ASSETS_2", #8CFF28);
            aquajumptoplace(target, 0, 12);
        });
        c_waitcustom();
        c_speaker("no_name");
        c_msgsetloc(0, "* Glasses^1, that's what humans wear./%", "obj_dw_garden_aqua_slash_Step_0_gml_373_0");
        c_talk_wait();
        c_customfunc(function()
        {
            var target = findspriteinfo(spr_aqua_walk_down, "CUTSCENE2_ASSETS_2", #47E6FF);
            aquajumptoplace(target, 0, 12);
        });
        c_waitcustom();
        c_speaker("no_name");
        c_msgsetloc(0, "* So glad to meet some more people like me./", "obj_dw_garden_aqua_slash_Step_0_gml_384_0");
        c_facenext("susie", "K");
        c_msgnextloc("\\EK* ..^1. hey... uh.../", "obj_dw_garden_aqua_slash_Step_0_gml_386_0");
        c_facenext("no_name", 0);
        c_msgnextloc("* What^1? Are you going to ask if you can get to the feather?/", "obj_dw_garden_aqua_slash_Step_0_gml_388_0");
        c_msgnextloc("* Uuu..^1. I can't let you do that./", "obj_dw_garden_aqua_slash_Step_0_gml_389_0");
        c_facenext("ralsei", "6");
        c_msgnextloc("\\E6* We haven't asked about that yet./", "obj_dw_garden_aqua_slash_Step_0_gml_391_0");
        c_facenext("no_name", 0);
        c_msgnextloc("* You three seem like great humans^1. I'd love to give it to you./", "obj_dw_garden_aqua_slash_Step_0_gml_393_0");
        c_msgnextloc("* But I can't./", "obj_dw_garden_aqua_slash_Step_0_gml_394_0");
        c_facenext("susie", "2");
        c_msgnextloc("\\E2* Why not?/", "obj_dw_garden_aqua_slash_Step_0_gml_396_0");
        c_facenext("no_name", 0);
        c_msgnextloc("* Because..^1. I'm not supposed to^1, hee hee hee./", "obj_dw_garden_aqua_slash_Step_0_gml_398_0");
        c_msgnextloc("* And being human is about not doing things you're not supposed to./", "obj_dw_garden_aqua_slash_Step_0_gml_399_0");
        c_facenext("susie", "A");
        c_msgnextloc("\\EA* Nah^1, that's not true./", "obj_dw_garden_aqua_slash_Step_0_gml_401_0");
        c_facenext("no_name", 0);
        c_msgnextloc("* Really?/%", "obj_dw_garden_aqua_slash_Step_0_gml_403_0");
        c_talk();
        c_wait_box(4);
        c_customfunc(function()
        {
            with (aqua)
            {
                sprite_index = spr_aqua_walk_up;
                image_speed = 0;
                image_index = 0;
            }
        });
        c_wait_box(5);
        c_customfunc(function()
        {
            with (aqua)
            {
                sprite_index = spr_aqua_shakehead;
                image_index = 0;
                image_speed = 0.25;
            }
        });
        c_wait_box(6);
        c_customfunc(function()
        {
            with (aqua)
            {
                sprite_index = spr_aqua_shakehead;
                image_index = 0;
                image_speed = 0;
            }
        });
        c_wait_box(14);
        c_customfunc(function()
        {
            with (aqua)
            {
                sprite_index = spr_aqua_laugh;
                image_index = 0;
                image_speed = 0.16666666666666666;
            }
        });
        c_wait_box(15);
        c_customfunc(function()
        {
            with (aqua)
            {
                sprite_index = spr_aqua_shakehead;
                image_index = 0;
                image_speed = 0;
            }
        });
        c_wait_box(19);
        c_customfunc(function()
        {
            with (aqua)
            {
                sprite_index = spr_aqua_surprise;
                image_index = 0;
                image_speed = 0;
            }
        });
        c_wait_talk();
        c_customfunc(function()
        {
            var target = findspriteinfo(spr_aqua_walk_down, "CUTSCENE2_ASSETS_2", #47E6FF);
            aquajumptoplace(target, 0, 12);
        });
        c_waitcustom();
        c_speaker("no_name");
        c_msgsetloc(0, "* Hee hee hee^1, that's good^1, that's good!!/", "obj_dw_garden_aqua_slash_Step_0_gml_480_0");
        c_msgnextloc("* I was hoping being human was about playing since I always wanted to play a game./", "obj_dw_garden_aqua_slash_Step_0_gml_481_0");
        c_facenext("ralsei", "1");
        c_msgnextloc("\\E1* How about if we play with you.../", "obj_dw_garden_aqua_slash_Step_0_gml_483_0");
        c_facenext("susie", "2");
        c_msgnextloc("\\E2* You give us that cool feather?/%", "obj_dw_garden_aqua_slash_Step_0_gml_485_0");
        c_talk();
        c_customfunc(function()
        {
            with (aqua)
            {
                sprite_index = spr_aqua_sleevewave;
                image_index = 0;
                image_speed = 0.25;
            }
        });
        c_wait_talk();
        c_var_instance(id, "dojumping", true);
        c_speaker("no_name");
        c_msgsetloc(0, "* Play play play play./", "obj_dw_garden_aqua_slash_Step_0_gml_503_0");
        c_msgnextloc("* Play play play play./%", "obj_dw_garden_aqua_slash_Step_0_gml_504_0");
        c_talk();
        c_wait_box_end(1);
        c_var_instance(id, "endjumping", true);
        c_wait(1);
        c_wait_if(id, "landed", "=", true);
        c_wait_if(id, "dojumping", "=", false);
        c_wait_talk();
    }
    
    c_customfunc(function()
    {
        makeknives();
    });
    
    if (global.tempflag[51] == 0)
    {
        scr_miniface_init_flowers();
        c_wait(5);
        c_sel(ra);
        c_flip("x");
        c_sprite(spr_ralsei_shocked_behind_hat);
        c_shakeobj();
        c_wait(10);
        c_speaker("aqua");
        global.writerimg[1] = spr_miniface_aqua;
        c_msgsetsubloc(0, "~1* Let's play./", (global.lang == "ja") ? "\\m0\t\t\t" : "\\m0\t\t", (global.lang == "ja") ? "&\t\t\t\t" : "&\t\t", "obj_dw_garden_aqua_slash_Step_0_gml_532_0");
        c_facenext("ralsei", "3");
        c_msgnextloc("\\E3* Wait^1, do you even know what a game is?/", "obj_dw_garden_aqua_slash_Step_0_gml_534_0");
        c_facenext("susie", "2");
        c_msgnextloc("\\E2* Seems like she does to me./%", "obj_dw_garden_aqua_slash_Step_0_gml_536_0");
        c_talk();
        c_wait_box(2);
        c_sel(ra);
        c_flip("x");
        var rareset = findspriteinfo(spr_debug_ramarker, "CUTSCENE2_ASSETS_1", #FFFF87);
        c_setxy(rareset.x, rareset.y);
        c_facing("u");
        c_wait_talk();
        c_wait(15);
    }
    else
    {
        c_wait(30);
    }
    
    c_customfunc(function()
    {
        floradinambush();
    });
    c_wait(12);
    c_customfunc(function()
    {
        with (su_actor)
        {
            var target = findspriteinfo(spr_debug_sumarker, "CUTSCENE2_ASSETS_3");
            scr_lerpvar("x", x, target.x, 5, 1, "out");
            sprite_index = spr_susie_sheeh;
        }
        
        with (ra_actor)
        {
            var target = findspriteinfo(spr_debug_ramarker, "CUTSCENE2_ASSETS_3");
            scr_lerpvar("x", x, target.x, 5, 1, "out");
            sprite_index = spr_ralsei_shock_overworld_left;
        }
        
        snd_play(snd_wing);
    });
    c_wait(30);
    c_customfunc(function()
    {
        snd_play(snd_tensionhorn);
        snd_play_delay(snd_tensionhorn, 10, undefined, 1.1);
    });
    c_wait(15);
    c_customfunc(function()
    {
        scr_setparty(0);
    });
    c_wait(1);
    c_actortokris();
    c_var_instance(id, "con", 5);
}

if (con == 5)
{
    var aquacopy = scr_marker_frominstance(aqua);
    aquacopy.depth = 0;
    aqua.visible = false;
    global.flag[9] = 2;
    global.tempflag[51]++;
    show_debug_message_concat("attempt: ", global.tempflag[51]);
    scr_tempsave();
    scr_battle(220, 3, aquacopy);
    
    with (aquacopy)
        scr_delay_var("visible", 0, 24);
    
    global.flag[9] = 1;
    con = 6;
}

if (con == 6)
{
    if (global.fighting)
    {
        con = 6.1;
        scr_debug_print("battle start!");
        
        with (su_actor)
        {
            var targ = findspriteinfo(spr_debug_sumarker, "CUTSCENE2_ASSETS_1", #FFFF87);
            setxy(targ.x, targ.y);
            sprite_index = usprite;
        }
        
        with (ra_actor)
        {
            var targ = findspriteinfo(spr_debug_ramarker, "CUTSCENE2_ASSETS_1", #FFFF87);
            setxy(targ.x, targ.y);
            sprite_index = usprite;
        }
        
        with (fl_left)
            instance_destroy();
        
        with (fl_right)
            instance_destroy();
        
        for (var i = 0; i < array_length(knives); i++)
            instance_destroy(knives[i]);
        
        knives = [];
        
        with (obj_actor)
            instance_destroy();
        
        with (aqua)
        {
            visible = true;
            sprite_index = spr_aqua_walk_down;
            image_speed = 0;
            image_index = 0;
        }
    }
}

if (con == 6.1)
{
    if (!global.fighting)
    {
        scr_debug_print("battle over");
        scr_setparty(1, 1);
        con = 6.2;
        scr_delay_var("con", 6.3, 1);
        scr_delay_var("con", 9, 2);
    }
}

if (con == 6.3)
{
    var krpos1 = findspriteinfo(spr_debug_krmarker, "CUTSCENE2_ASSETS_1", #FFFF87);
    var supos1 = findspriteinfo(spr_debug_sumarker, "CUTSCENE2_ASSETS_1", #FFFF87);
    var rapos1 = findspriteinfo(spr_debug_ramarker, "CUTSCENE2_ASSETS_1", #FFFF87);
    var _su = -4;
    var _ra = -4;
    
    with (obj_caterpillarchara)
    {
        if (name == "susie")
            _su = id;
        
        if (name == "ralsei")
            _ra = id;
    }
    
    with (_su)
        setxy(supos1.x, supos1.y);
    
    with (_ra)
        setxy(rapos1.x, rapos1.y);
    
    con = 6.4;
}

if (con == 9 && !instance_exists(obj_battleback))
{
    aqpos[0] = findspriteinfo(spr_aqua_walk_down, "CUTSCENE3_ASSETS_1", #47E6FF);
    aqpos[1] = findspriteinfo(spr_aqua_walk_down, "CUTSCENE3_ASSETS_1", #47E647);
    aqpos[2] = findspriteinfo(spr_aqua_walk_down, "CUTSCENE3_ASSETS_1", #FF19E0);
    aqpos[3] = findspriteinfo(spr_aqua_walk_down, "CUTSCENE3_ASSETS_1", #2BFFA6);
    aqpos[4] = findspriteinfo(spr_aqua_walk_down, "CUTSCENE3_ASSETS_1", #2BFF3C);
    aqpos[5] = findspriteinfo(spr_aqua_walk_down, "CUTSCENE3_ASSETS_1", #2BEDFF);
    scr_debug_print("CUT START");
    con = 10;
    scr_cutscene_make();
    scr_maincharacters_actors();
    scr_miniface_init_flowers();
    snd_stop_all();
    scr_musicer("meeting_flower.ogg", undefined, undefined, undefined, 30);
    c_wait(15);
    c_speaker("aqua");
    c_msgsetsubloc(0, "~1* I've never lost before^1,~2it's fun!/", (global.lang == "ja") ? "\\m0\t\t\t" : "\\m0\t\t", (global.lang == "ja") ? "&\t\t\t\t" : "&\t\t", "obj_dw_garden_aqua_slash_Step_0_gml_705_0");
    c_msgnextsubloc("~1* Come to think of it^1,~2I've never won before either./", (global.lang == "ja") ? "\\m0\t\t\t" : "\\m0\t\t", (global.lang == "ja") ? "&\t\t\t\t" : "&\t\t", "obj_dw_garden_aqua_slash_Step_0_gml_706_0");
    c_facenext("susie", "2");
    c_msgnextloc("\\E2* Sick^1. Now all you gotta do is give us a prize./", "obj_dw_garden_aqua_slash_Step_0_gml_708_0");
    c_facenext("aqua", 0);
    c_msgnextsubloc("~1* Prize?/", (global.lang == "ja") ? "\\m0\t\t\t" : "\\m0\t\t", (global.lang == "ja") ? "&\t\t\t\t" : "&\t\t", "obj_dw_garden_aqua_slash_Step_0_gml_710_0");
    c_facenext("susie", "A");
    c_msgnextloc("\\EA* Yeah. The loser's always gotta give something to the winner./%", "obj_dw_garden_aqua_slash_Step_0_gml_712_0");
    c_talk();
    c_customfunc(function()
    {
        with (aqua)
        {
            sprite_index = spr_aqua_laugh;
            image_speed = 0.2;
            image_index = 0;
        }
    });
    c_wait_box(1);
    c_customfunc(function()
    {
        aqua.sprite_index = spr_aqua_walk_down;
        aqua.image_speed = 0;
        aqua.image_index = 0;
    });
    c_wait_box(2);
    c_customfunc(function()
    {
        aqua.sprite_index = spr_aqua_surprise;
        aqua.image_speed = 0;
        aqua.image_index = 0;
    });
    c_wait_box(4);
    c_sel(su);
    c_sprite(spr_susie_up_look_right);
    c_wait_box(6);
    c_customfunc(function()
    {
        with (aqua)
        {
            sprite_index = spr_aqua_shakehead;
            image_speed = 0;
            image_index = 1;
        }
    });
    c_wait_box(8);
    c_sel(su);
    c_facing("u");
    c_wait_talk();
    c_wait(5);
    c_customfunc(function()
    {
        target = aqua;
        aquajumptoplace(target, 0, 8, 1.5, -12);
    });
    c_waitcustom();
    c_speaker("aqua");
    c_msgsetsubloc(0, "~1* Uuu^1, really^1? How fun^1! I've~2never got to give something~2before./", (global.lang == "ja") ? "\\m0\t\t\t" : "\\m0\t\t", (global.lang == "ja") ? "&\t\t\t\t" : "&\t\t", "obj_dw_garden_aqua_slash_Step_0_gml_745_0");
    c_msgnextsubloc("~1* My first gift^1, hmm..^1. what~2should it be...?/%", (global.lang == "ja") ? "\\m0\t\t\t" : "\\m0\t\t", (global.lang == "ja") ? "&\t\t\t\t" : "&\t\t", "obj_dw_garden_aqua_slash_Step_0_gml_746_0");
    c_talk();
    c_customfunc(function()
    {
        with (aqua)
        {
            sprite_index = spr_aqua_sleevewave;
            image_speed = 0.2;
        }
    });
    c_wait_box(1);
    c_customfunc(function()
    {
        with (aqua)
        {
            sprite_index = spr_aqua_shakehead;
            image_speed = 0;
            image_index = 0;
        }
    });
    c_wait_talk();
    c_customfunc(function()
    {
        with (scr_marker_ext(aqua.x + 20, aqua.y - 24, spr_exc, 2, 2, undefined, undefined, undefined, aqua.depth + 1))
        {
            scr_limitval_upper(id, "y", ystart);
            vspeed = -6;
            gravity = 1;
            scr_doom(id, 18);
        }
    });
    c_wait(15);
    c_customfunc(function()
    {
        target = aqua;
        aquajumptoplace(target, 0, 6, 1.3, -14);
    });
    c_waitcustom();
    c_wait(15);
    c_speaker("aqua");
    c_msgsetsubloc(0, "~1* I know^1! Behind me is a really~2special feather!/", (global.lang == "ja") ? "\\m0\t\t\t" : "\\m0\t\t", (global.lang == "ja") ? "&\t\t\t\t" : "&\t\t", "obj_dw_garden_aqua_slash_Step_0_gml_779_0");
    c_msgnextsubloc("~1* You three should take it!/", (global.lang == "ja") ? "\\m0\t\t\t" : "\\m0\t\t", (global.lang == "ja") ? "&\t\t\t\t" : "&\t\t", "obj_dw_garden_aqua_slash_Step_0_gml_780_0");
    c_facenext("ralsei", "8");
    c_msgnextloc("\\E8* Umm^1, we'd love to^1! Thanks!/%", "obj_dw_garden_aqua_slash_Step_0_gml_782_0");
    c_talk();
    c_wait_box(1);
    c_customfunc(function()
    {
        with (aqua)
        {
            sprite_index = spr_aqua_sleevewave;
            image_speed = 0.2;
            image_index = 2;
        }
    });
    c_wait_box(3);
    c_customfunc(function()
    {
        with (aqua)
        {
            sprite_index = spr_aqua_sleevewave;
            image_speed = 0;
        }
    });
    c_wait_talk();
    c_customfunc(function()
    {
        with (aqua)
        {
            sprite_index = spr_aqua_laugh;
            image_speed = 0.2;
        }
    });
    c_wait(15);
    c_speaker("aqua");
    c_msgsetsubloc(0, "~1* Thanks^1, thanks^1! Uuu^1, I can't~2wait to tell Purple I lost!/%", (global.lang == "ja") ? "\\m0\t\t\t" : "\\m0\t\t", (global.lang == "ja") ? "&\t\t\t\t" : "&\t\t", "obj_dw_garden_aqua_slash_Step_0_gml_797_0");
    c_talk_wait();
    var delaytime = 6;
    c_sel(su);
    c_delayfacing(delaytime, "r");
    c_customfunc(function()
    {
        var target = aqpos[1];
        
        with (aqua)
        {
        }
        
        aquajumptoplace(target, 0, 4, 1.6, -10);
    });
    c_waitcustom();
    delaytime = 8;
    c_sel(ra);
    c_delayfacing(delaytime, "l");
    c_sel(kr);
    c_delayfacing(delaytime, "r");
    c_customfunc(function()
    {
        var target = aqpos[2];
        aquajumptoplace(target, 0, 4, 1.6, -12);
    });
    delaytime = 30;
    c_sel(ra);
    c_delayfacing(delaytime, "d");
    c_sel(kr);
    c_delayfacing(delaytime, "d");
    c_sel(su);
    c_delayfacing(delaytime, "d");
    c_waitcustom();
    c_customfunc(function()
    {
        aqua.depth = kr_actor.depth - 10;
        var target = aqpos[3];
        aquajumptoplace(target, 0, 6, 1.6, -10);
    });
    c_waitcustom();
    c_wait(15);
    c_customfunc(function()
    {
        aqua.sprite_index = spr_aqua_walk_up;
    });
    c_msgside("top");
    c_speaker("aqua");
    c_msgsetsubloc(0, "~1* ..^1. oh^1! Can you do me a~2favor^1? Make sure no one~2else takes that feather!/%", (global.lang == "ja") ? "\\m0\t\t\t" : "\\m0\t\t", (global.lang == "ja") ? "&\t\t\t\t" : "&\t\t", "obj_dw_garden_aqua_slash_Step_0_gml_849_0");
    c_talk_wait();
    c_wait(15);
    c_sel(su);
    c_sprite(spr_susie_pose);
    c_sel(ra);
    c_sprite(spr_ralsei_dark_pose);
    c_sound_play_x(snd_shineselect, 0.7, 1.4);
    c_wait(15);
    c_speaker("susie");
    c_msgsetloc(0, "\\E9* Duh^1. You can trust us./", "obj_dw_garden_aqua_slash_Step_0_gml_863_0");
    c_facenext("aqua", 0);
    c_msgnextsubloc("~1* Trust^1, trust^1, trust!/%", (global.lang == "ja") ? "\\m0\t\t\t" : "\\m0\t\t", (global.lang == "ja") ? "&\t\t\t\t" : "&\t\t", "obj_dw_garden_aqua_slash_Step_0_gml_865_0");
    c_talk();
    c_wait_box(2);
    c_customfunc(function()
    {
        with (aqua)
        {
            sprite_index = spr_aqua_sleevewave;
            image_speed = 0.2;
            image_index = 0;
        }
    });
    c_wait_talk();
    c_sel(su);
    c_facing("d");
    c_sel(ra);
    c_facing("d");
    c_addxy(16, 0);
    c_customfunc(function()
    {
        var target = aqpos[4];
        aquajumptoplace(target, 8, 0, 1.8, -12);
    });
    c_waitcustom();
    c_customfunc(function()
    {
        var target = aqpos[5];
        aquajumptoplace(target, 8, 0, 1.8, -10);
    });
    c_waitcustom();
    c_customfunc(function()
    {
        snd_volume(global.currentsong[1], 0, 30);
        aqua.visible = false;
        snd_play(snd_petal_recover, 0.4, 1);
        snd_play(snd_petal_recover, 0.4, 1.2);
    });
    c_wait(30);
    c_sel(su);
    c_facing("r");
    c_sel(ra);
    c_facing("l");
    c_speaker("ralsei");
    c_msgsetloc(0, "\\E8* She seemed like a nice girl after all./", "obj_dw_garden_aqua_slash_Step_0_gml_907_0");
    c_facenext("susie", "0");
    
    if (scr_flag_get(1819) == 1)
        c_msgnextloc("\\E0* ..^1. wonder if that feather can really get us through?/%", "obj_dw_garden_aqua_slash_Step_0_gml_911_0");
    else
        c_msgnextloc("\\E0* ..^1. wonder what the deal with that feather thing is?/%", "obj_dw_garden_aqua_slash_Step_0_gml_915_0");
    
    c_talk();
    c_wait_talk();
    c_pannable(1);
    c_customfunc(function()
    {
        global.facing = 0;
        snd_free_all();
        scr_musicer("piano_ambience.ogg", 1, undefined, undefined, 15);
    });
    c_panobj(kr_actor, 15);
    c_wait(15);
    c_pannable(0);
    c_wait(1);
    c_actortokris();
    c_actortocaterpillar();
    c_terminatekillactors();
}

if (con == 10 && !instance_exists(obj_cutscene_master))
{
    global.tempflag[51] = 0;
    scr_caterpillar_interpolate("all");
    con = 11;
    global.interact = 0;
    global.plot = 292;
    scr_tempsave();
}

if (endcustom == true)
{
    endcustom = false;
    c_waitcustom_end();
}

if (bushCon == 0)
{
    var trig = 0;
    
    with (bushLeft)
    {
        if (myinteract == 3)
        {
            scr_shakeobj(mybush);
            snd_play(snd_wing);
            trig = 1;
        }
    }
    
    with (bushRight)
    {
        if (myinteract == 3)
        {
            scr_shakeobj(mybush);
            snd_play(snd_wing);
            trig = 1;
        }
    }
    
    if (trig == 1)
    {
        global.interact = 1;
        bushLeft.myinteract = 0;
        bushRight.myinteract = 0;
        bushCon = 1;
        delay_function(function()
        {
            bushCon = 2;
        }, 10);
    }
}

if (bushCon == 2)
{
    var bushLine1 = stringset();
    scr_speaker("no_name");
    
    if (bushtalk == 0)
        msgsetloc(0, "* Hey^1, don't talk to me^1. This is my big fluffy $$$$ing shrub./%", "obj_dw_garden_aqua_slash_Step_0_gml_1016_0");
    else if (bushtalk == 1)
        msgsetloc(0, "* Hey^1, don't talk to me^1. This is my big $$$$y fluffing shrub./%", "obj_dw_garden_aqua_slash_Step_0_gml_1018_0");
    else if (bushtalk == 2)
        msgsetloc(0, "* Hey^1, don't talk to me^1. This is my big fluffy shrubbing $$$$./%", "obj_dw_garden_aqua_slash_Step_0_gml_1020_0");
    
    bushtalk++;
    
    if (bushtalk > 2)
        bushtalk = 0;
    
    d_make();
    bushCon = 3;
}

if (bushCon == 3 && !d_ex())
{
    bushCon = 0;
    global.interact = 0;
}
