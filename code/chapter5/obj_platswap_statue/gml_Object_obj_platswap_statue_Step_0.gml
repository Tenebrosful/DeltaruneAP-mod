/// IMPORT
if (room == room_dw_garden_finalplatforming_right)
{
    function makeknives()
    {
        for (var i = 0; i < array_length(knives); i++)
            instance_destroy(knives[i]);
        
        knives = [];
        var target = aquamarker_middle;
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
        fl_left.image_blend = c_white;
        fl_left.image_speed = 0;
        fl_right.image_blend = c_white;
        fl_right.image_speed = 0;
        var fl_left_target = floradinnmarker_left;
        var fl_right_target = floradinnmarker_right;
        
        with (fl_left)
        {
            show_debug_message_concat("fl_left depth=", depth);
            var target = fl_left_target;
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
            var target = fl_right_target;
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
            
            with (obj_platswap_statue)
            {
                if (!dojumping)
                    scr_delay_var("endcustom", 1, jumptime + 1);
                
                scr_delay_var("landed", 1, jumptime + 1);
            }
        }
    }
    
    if (dojumping)
    {
        var target = aquamarker_middle;
        
        if (landed)
        {
            var frames = [0, 8];
            
            if (endjumping)
            {
                dojumping = false;
                target.x = 300;
            }
            else if (aqua.x < 300)
            {
                target.x += random_range(50, 80);
            }
            else
            {
                target.x -= random_range(50, 80);
            }
            
            if (target.x > aqua.x)
                frames = [8, 0];
            
            aquajumptoplace(target, frames[0], frames[1], 1.5, -12);
            landed = false;
        }
    }
}

if (!platinit)
{
    y_plat = y;
    yscale_plat = 0.5;
    
    if (floating)
        yscale_plat = 2;
    
    scr_plat_depthcast();
    y_ow = y;
    yscale_ow = 2;
    ignore_yorigin = 0;
    wings = -4;
    floortex = instance_place(x, y, obj_plat_floortex);
    
    if (instance_exists(floortex))
    {
        y_ow = y;
        y_plat = floortex.y - 3;
    }
    
    platinit = true;
    
    with (instance_create(x - 10, y_ow - 20, obj_solidblock))
    {
        other.blocks[0] = id;
        image_xscale = 1;
        image_yscale = 1;
    }
}

if (myinteract == 3)
{
    if (i_ex(mydialoguer) == false)
    {
        global.interact = 0;
        myinteract = 0;
        
        with (obj_mainchara)
            onebuffer = 5;
    }
}

var lastmode = mode;
mode = obj_platswap.mode;
var _incr = 0.2;
var maxnum = image_number - 1;
pal_index = scr_wrap(pal_index + _incr, 0, 6);

if (mode == 0)
{
    scr_depth_alt(self);
    maxnum = 0;
}
else if (mode != lastmode)
{
    scr_plat_depthcast();
}

if (mode == 1 && i_ex(obj_dw_garden_aquahole) && obj_dw_garden_aquahole.firsttime)
    can_hit = false;

image_index = scr_clamp_gradual(image_index, maxnum, maxnum, 0.25);

if (i_ex(wings))
{
    wings.x = x;
    wings.y = y + 60;
    wings.depth = depth + 1;
}

shinetimer++;
var sgn = 1;

if (!visible)
    sgn = -1;

for (var i = 0; i < 1; i++)
    blocks[i].x = abs(blocks[i].x) * sgn;

if (global.flag[24] == 0 || (i_ex(obj_mainchara) && obj_mainchara.holding_item != -4))
    pal_index = 7;

if (mode == 0)
{
    with (obj_plat_windcontroller_new)
    {
        if (winddirection == 90)
        {
            with (other)
                event_user(1);
        }
    }
}

if (timer > 0)
{
    timer--;
    
    if (timer == 0)
    {
        with (object_index)
        {
            hit = 0;
            can_hit = 1;
        }
        
        audio_stop_sound(snd_impact);
        snd_play_pitch(snd_impact, 1.25);
    }
}
else
{
}

if (con == 1)
{
    global.interact = 1;
    cutscene_master = scr_cutscene_make();
    scr_maincharacters_actors();
    seth = scr_marker(-80, 3770, spr_seth_walk_right);
    aqua = scr_marker(-80, 3780, spr_aqua_walk_right);
    aqua_autodepth = 1;
    aquamarker_left = scr_marker(250, 3640, spr_aqua_walk_down);
    aquamarker_middle = scr_marker(300, 3640, spr_aqua_walk_down);
    aquamarker_right = scr_marker(350, 3640, spr_aqua_walk_down);
    aquamarker_left.visible = 0;
    aquamarker_middle.visible = 0;
    aquamarker_right.visible = 0;
    fl_left = scr_marker(-80, 3775, spr_enemy_floradin);
    fl_right = scr_marker(680, 3775, spr_enemy_floradin);
    fl_left.image_xscale = 2;
    fl_left.image_yscale = 2;
    fl_right.image_xscale = 2;
    fl_right.image_yscale = 2;
    floradinnmarker_left = scr_marker(245, 3775, spr_enemy_floradin);
    floradinnmarker_right = scr_marker(345, 3775, spr_enemy_floradin);
    floradinnmarker_left.visible = 0;
    floradinnmarker_right.visible = 0;
    scr_setparty(0);
    apdata = AP_get_location_reward_data(284);
    con = 1.1;
}

if (con == 1.1)
{
    con = 2;
    global.facing = 0;
    obj_mainchara.visible = 0;
    c_customfunc(function()
    {
        with (fl_left)
            scr_depth();
    });
    c_customfunc(function()
    {
        with (fl_right)
            scr_depth();
    });
    c_customfunc(function()
    {
        with (seth)
        {
            image_xscale = 2;
            image_yscale = 2;
        }
    });
    c_customfunc(function()
    {
        with (aqua)
        {
            image_xscale = 2;
            image_yscale = 2;
        }
    });
    
    with (obj_caterpillarchara)
        visible = 0;
    
    c_sel(kr);
    c_walkdirect(300, 3640, 16);
    c_sel(su);
    c_walkdirect(245, 3635, 16);
    c_sel(ra);
    c_walkdirect_wait(345, 3640, 16);
    c_sel(kr);
    c_facing("u");
    c_sel(su);
    c_facing("u");
    c_sel(ra);
    c_facing("u");
    c_wait(10);
    c_msgside("top");
    c_speaker("susie");
    c_sel(su);
    c_sprite(spr_susie_head_scratch_dw);
    c_msgsetloc(0, "\\E0* Alright^1, now how does this statue work?/%", "obj_ch4_DCA08A_slash_Step_0_gml_70_0");
    c_talk();
    c_wait_talk();
    c_sel(su);
    c_sprite(spr_susie_walk_up_dw);
    c_emote("!", 30);
    c_sel(ra);
    c_emote("!", 30);
    c_speaker("seth");
    c_customfunc(function()
    {
        snd_free_all();
    });
    c_msgsetloc(0, "* There you are!/%", "obj_ch4_DCA08A_slash_Step_0_gml_70_0");
    c_talk();
    c_wait_talk();
    c_customfunc(function()
    {
        snd_free_all();
        scr_musicer("meeting_flower.ogg");
    });
    c_sel(kr);
    c_facing("d");
    c_sel(su);
    c_facing("d");
    c_sel(ra);
    c_facing("d");
    c_markerwalkdirect(seth, 285, 3770, 48, spr_seth_walk_right, 0.25);
    c_wait(49);
    c_customfunc(function()
    {
        with (seth)
        {
            sprite_index = spr_seth_walk_up;
            image_index = 0;
        }
    });
    c_speaker("seth");
    c_msgsetloc(0, "* You three are not allowed to use this statue!/", "obj_ch4_DCA08A_slash_Step_0_gml_70_0");
    c_facenext("ralsei", "0");
    c_msgnextloc("\\E0* Oh^1, is it dangerous?/", "obj_ch4_DCA08A_slash_Step_0_gml_70_0");
    c_facenext("seth", "0");
    c_msgnextloc("* What^1? No^1, if you use it you'll--/", "obj_ch4_DCA08A_slash_Step_0_gml_70_0");
    c_msgnextloc("* Uh^1, I mean yes^1! It's very dangerous^1!/", "obj_ch4_DCA08A_slash_Step_0_gml_70_0");
    c_msgnextloc("* You should stay back here^1, where it's safe^1! Yep^1, that's right!/%", "obj_ch4_DCA08A_slash_Step_0_gml_70_0");
    c_talk();
    c_customfunc(function()
    {
        with (seth)
            sprite_index = spr_seth_walk_up;
    });
    c_wait_box(3);
    c_markerwalkdirect(aqua, 230, 3780, 48, spr_aqua_walk_right, 0.25);
    c_wait(49);
    c_customfunc(function()
    {
        with (aqua)
        {
            sprite_index = spr_aqua_walk_right;
            image_index = 0;
        }
    });
    c_wait_box(5);
    c_customfunc(function()
    {
        with (seth)
            sprite_index = spr_seth_glasses_shiny;
    });
    c_wait_talk();
    c_speaker("aqua");
    c_msgsetloc(0, "* Uuu^1, I thought that was the statue that made us jump./", "obj_ch4_DCA08A_slash_Step_0_gml_70_0");
    c_facenext("seth", "0");
    c_msgnextloc("* What are you doing here?!/", "obj_ch4_DCA08A_slash_Step_0_gml_70_0");
    c_msgnextloc(string("* I told you to protect the {0}!/", string(apdata.itemName)));
    c_facenext("aqua", "0");
    c_msgnextloc("* Yeah^1, I got bored./", "obj_ch4_DCA08A_slash_Step_0_gml_70_0");
    c_facenext("seth", "0");
    c_msgnextloc("* Oh^1, forget it./", "obj_ch4_DCA08A_slash_Step_0_gml_70_0");
    c_msgnextloc("* Look^1, these three people are trying to get to Asgore./", "obj_ch4_DCA08A_slash_Step_0_gml_70_0");
    c_msgnextloc("* We need to teach them a lesson!/", "obj_ch4_DCA08A_slash_Step_0_gml_70_0");
    c_facenext("aqua", "0");
    c_msgnextloc("* Uuu^1, but I hate lessons..^1.&* School is so boring.../", "obj_ch4_DCA08A_slash_Step_0_gml_70_0");
    c_facenext("seth", "0");
    c_msgnextloc("* ..^1.Have you even BEEN to school?/", "obj_ch4_DCA08A_slash_Step_0_gml_70_0");
    c_facenext("aqua", "0");
    c_msgnextloc("* Nope./", "obj_ch4_DCA08A_slash_Step_0_gml_70_0");
    c_facenext("seth", "0");
    c_msgnextloc("* .../", "obj_ch4_DCA08A_slash_Step_0_gml_70_0");
    c_msgnextloc(string("* Well^1, I need to leave to protect the {0}./", string(apdata.itemName)));
    c_msgnextloc("* You stay here and keep them distracted^1, okay?/", "obj_ch4_DCA08A_slash_Step_0_gml_70_0");
    c_facenext("aqua", "0");
    c_msgnextloc("* Okay^1! Bye bye!/%", "obj_ch4_DCA08A_slash_Step_0_gml_70_0");
    c_talk();
    c_customfunc(function()
    {
        with (aqua)
        {
            sprite_index = spr_aqua_walk_right;
            image_index = 0;
        }
    });
    c_wait_box(0);
    c_customfunc(function()
    {
        with (aqua)
        {
            sprite_index = spr_aqua_confused;
            image_index = 1;
        }
    });
    c_customfunc(function()
    {
        with (seth)
            sprite_index = spr_seth_panic;
    });
    c_wait_box(2);
    c_customfunc(function()
    {
        with (seth)
            sprite_index = spr_seth_upset;
    });
    c_wait_box(5);
    c_customfunc(function()
    {
        with (aqua)
        {
            sprite_index = spr_aqua_walk_right;
            image_index = 0;
        }
    });
    c_wait_box(6);
    c_customfunc(function()
    {
        with (seth)
            sprite_index = spr_seth_shakehead;
    });
    c_wait_box(9);
    c_customfunc(function()
    {
        with (seth)
            sprite_index = spr_seth_walk_left;
    });
    c_wait_box(10);
    c_sel(su);
    c_facing("r");
    c_emote("...", 30);
    c_sel(ra);
    c_facing("l");
    c_emote("...", 30);
    c_wait_box(11);
    c_customfunc(function()
    {
        with (aqua)
            sprite_index = spr_enemy_aqua_unamused_r;
    });
    c_wait_box(15);
    c_customfunc(function()
    {
        with (aqua)
            sprite_index = spr_aqua_walk_right;
    });
    c_customfunc(function()
    {
        with (seth)
            sprite_index = spr_seth_shakehead;
    });
    c_wait_box(17);
    c_sel(su);
    c_facing("d");
    c_sel(ra);
    c_facing("d");
    c_customfunc(function()
    {
        with (seth)
            sprite_index = spr_seth_walk_left;
    });
    c_wait_box(22);
    c_customfunc(function()
    {
        with (aqua)
        {
            sprite_index = spr_aqua_wave;
            image_index = 0;
            image_speed = 0.4;
        }
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
    });
    c_wait(48);
    c_customfunc(function()
    {
        with (aqua)
        {
            sprite_index = spr_aqua_walk_left;
            image_index = 0;
            image_speed = 0;
        }
    });
    c_markerwalkdirect(aqua, 150, 3780, 16, spr_aqua_walk_left, 0.25);
    c_wait(17);
    c_customfunc(function()
    {
        with (aqua)
        {
            sprite_index = spr_aqua_walk_left;
            image_index = 0;
        }
    });
    c_sel(kr);
    c_walkdirect(300, 3770, 32);
    c_sel(su);
    c_walkdirect(245, 3755, 32);
    c_sel(ra);
    c_walkdirect_wait(345, 3760, 32);
    c_sel(kr);
    c_facing("l");
    c_sel(su);
    c_facing("l");
    c_sel(ra);
    c_facing("l");
    c_msgside("top");
    c_speaker("ralsei");
    c_msgsetloc(0, "\\E8* ..^1. hello there./%", "obj_dw_garden_aqua_slash_Step_0_gml_309_0");
    c_talk_wait();
    c_customfunc(function()
    {
        aqua.sprite_index = spr_aqua_walk_right;
    });
    c_wait(15);
    c_speaker("no_name");
    c_msgsetloc(0, "* Oh^1, some fellow humans!/%", "obj_dw_garden_aqua_slash_Step_0_gml_321_0");
    c_talk_wait();
    c_customfunc(function()
    {
        var target = kr_actor;
        aquajumptoplace(target, 8, 0);
    });
    c_waitcustom();
    c_markerwalkdirect(aqua, 300, 3640, 16, spr_aqua_walk_up, 0.25);
    c_wait(16);
    c_var_instance(id, "aqua_autodepth", 0);
    c_sel(kr);
    c_facing("u");
    c_sel(su);
    c_facing("u");
    c_sel(ra);
    c_facing("u");
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
    c_speaker("no_name");
    c_msgsetloc(0, "* I see you have naturally blue skin just like me./%", "obj_dw_garden_aqua_slash_Step_0_gml_351_0");
    c_talk_wait();
    c_customfunc(function()
    {
        var target = aquamarker_left;
        aquajumptoplace(target, 8, 0);
    });
    c_waitcustom();
    c_speaker("no_name");
    c_msgsetloc(0, "* Purple skin and teeth^1, just like my friend./%", "obj_dw_garden_aqua_slash_Step_0_gml_362_0");
    c_talk_wait();
    c_customfunc(function()
    {
        var target = aquamarker_right;
        aquajumptoplace(target, 0, 12);
    });
    c_waitcustom();
    c_speaker("no_name");
    c_msgsetloc(0, "* Glasses^1, that's what humans wear./%", "obj_dw_garden_aqua_slash_Step_0_gml_373_0");
    c_talk_wait();
    c_customfunc(function()
    {
        var target = aquamarker_middle;
        aquajumptoplace(target, 0, 12);
    });
    c_waitcustom();
    c_speaker("no_name");
    c_msgsetloc(0, "* So glad to meet some more people like me./", "obj_dw_garden_aqua_slash_Step_0_gml_384_0");
    c_facenext("susie", "K");
    c_msgnextloc("\\EK* ..^1. hey... uh.../", "obj_dw_garden_aqua_slash_Step_0_gml_386_0");
    c_facenext("no_name", 0);
    c_msgnextloc("* What^1? Are you going to ask if you can get the thing?/", "obj_dw_garden_aqua_slash_Step_0_gml_388_0");
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
        var target = aquamarker_middle;
        aquajumptoplace(target, 0, 12);
    });
    c_waitcustom();
    c_speaker("no_name");
    c_msgsetloc(0, "* Hee hee hee^1, that's good^1, that's good!!/", "obj_dw_garden_aqua_slash_Step_0_gml_480_0");
    c_msgnextloc("* I was hoping being human was about playing since I always wanted to play a game./", "obj_dw_garden_aqua_slash_Step_0_gml_481_0");
    c_facenext("ralsei", "1");
    c_msgnextloc("\\E1* How about if we play with you.../", "obj_dw_garden_aqua_slash_Step_0_gml_483_0");
    c_facenext("susie", "2");
    c_msgnextloc("\\E2* You give us that cool..^1. uh^1, thing?/%", "obj_dw_garden_aqua_slash_Step_0_gml_485_0");
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
    c_customfunc(function()
    {
        makeknives();
    });
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
    c_setxy(345, 3760);
    c_facing("u");
    c_wait_talk();
    c_wait(15);
    c_customfunc(function()
    {
        floradinambush();
    });
    c_wait(12);
    c_customfunc(function()
    {
        with (su_actor)
        {
            scr_lerpvar("x", x, x - 28, 5, 1, "out");
            sprite_index = spr_susie_sheeh;
        }
        
        with (ra_actor)
        {
            scr_lerpvar("x", x, x + 22, 5, 1, "out");
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

if (aqua_autodepth == 1)
{
    with (aqua)
        scr_depth();
}

if (con == 5)
{
    var aquacopy = scr_marker_frominstance(aqua);
    aquacopy.depth = 0;
    aqua.visible = false;
    global.flag[9] = 2;
    global.tempflag[51]++;
    show_debug_message_concat("attempt: ", global.tempflag[51]);
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
            setxy(245, 3755);
            sprite_index = usprite;
        }
        
        with (ra_actor)
        {
            setxy(345, 3760);
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
        setxy(245, 3755);
    
    with (_ra)
        setxy(345, 3760);
    
    con = 6.4;
}

if (con == 9 && !instance_exists(obj_battleback))
{
    aqpos[0] = scr_marker(300, 3640, spr_aqua_walk_down);
    aqpos[1] = scr_marker(380, 3760, spr_aqua_walk_down);
    aqpos[2] = scr_marker(280, 3740, spr_aqua_walk_down);
    aqpos[3] = scr_marker(180, 3740, spr_aqua_walk_down);
    aqpos[4] = scr_marker(80, 3740, spr_aqua_walk_down);
    aqpos[5] = scr_marker(-80, 3740, spr_aqua_walk_down);
    aqpos[0].visible = 0;
    aqpos[1].visible = 0;
    aqpos[2].visible = 0;
    aqpos[3].visible = 0;
    aqpos[4].visible = 0;
    aqpos[5].visible = 0;
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
    c_msgsetsubloc(0, "~1* I know^1! Here is a really~2special item!/", (global.lang == "ja") ? "\\m0\t\t\t" : "\\m0\t\t", (global.lang == "ja") ? "&\t\t\t\t" : "&\t\t", "obj_dw_garden_aqua_slash_Step_0_gml_779_0");
    c_msgnextsubloc("~1* I took it to keep it safe^1,~2but now you three should~2take it!/", (global.lang == "ja") ? "\\m0\t\t\t" : "\\m0\t\t", (global.lang == "ja") ? "&\t\t\t\t" : "&\t\t", "obj_dw_garden_aqua_slash_Step_0_gml_780_0");
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
    c_msgsetsubloc(0, "~1* ..^1. oh^1! Can you do me a~2favor^1? Make sure no one~2else takes the thing!/%", (global.lang == "ja") ? "\\m0\t\t\t" : "\\m0\t\t", (global.lang == "ja") ? "&\t\t\t\t" : "&\t\t", "obj_dw_garden_aqua_slash_Step_0_gml_849_0");
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
    c_msgnextloc("\\E0* ..^1. wonder what the deal with that weird thing is?/", "obj_dw_garden_aqua_slash_Step_0_gml_915_0");
    c_facenext("no_name", "0");
    c_msgnextloc(string("* (You got {0}.)/%", AP_get_location_reward_text(258)));
    AP_sendLocation(284);
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
    global.flag[24] = 1;
}

if (endcustom == true)
{
    endcustom = false;
    c_waitcustom_end();
}

if (con == 20)
{
    con = 22;
    global.interact = 1;
    global.facing = 0;
    mus_volume(global.currentsong[1], 0, 30);
}

if (con == 22)
{
    con = 23;
    cutscene_master = scr_cutscene_make();
    scr_maincharacters_actors();
    c_sel(kr);
    c_walkdirect(300, 3640, 16);
    c_sel(su);
    c_walkdirect(245, 3635, 16);
    c_sel(ra);
    c_walkdirect_wait(345, 3640, 16);
    c_sel(kr);
    c_facing("u");
    c_sel(su);
    c_facing("u");
    c_sel(ra);
    c_facing("u");
    c_speaker("susie");
    c_msgsetloc(0, "\\E0* Alright^1, now lets actually see what this statue does.../%", "obj_dw_garden_aquashrine_slash_Step_0_gml_91_0");
    c_talk();
    c_wait_talk();
    c_wait(15);
    c_sel(kr);
    c_walkdirect(300, 3610, 15);
    c_wait(35);
    c_facing("d");
    c_customfunc(function()
    {
        scr_flag_set(24, 1);
    });
    c_customfunc(function(arg0)
    {
        var cl = instance_create(arg0.x - 100, arg0.y - 100, obj_plat_cam_nudgezone);
        cl.nudgey = -80;
        cl.image_xscale = 20;
        cl.image_yscale = 20;
    }, kr_actor);
    c_wait(30);
    c_sound_play(snd_feather_get_secondpart);
    c_customfunc(function()
    {
        sound_volume(wind_sound, 0.1, 25);
        
        with (obj_grassanim_new)
        {
            anim_length = 4;
            scr_lerpvar("anim_speed", 0.2, 0.8, 15);
        }
    });
    c_var_instance(id, "petalwinds", 1);
    c_var_lerp_instance(id, "petalwindspeed", petalwindspeedmin, petalwindspeedmax, 35);
    c_wait(35);
    c_actortokris();
    c_actortocaterpillar();
    c_customfunc(function()
    {
        with (obj_platswap)
        {
            transition_timemax = 140;
            event_user(0);
            
            with (obj_platswap_prop)
                depth_type = 1;
        }
        
        with (obj_plat_camera)
        {
            lerptimemax = 140;
            nudgey = -80;
            scr_delay_var("lerptimemax", 15, 140);
        }
        
        with (obj_plat_cam_nudgezone)
        {
            scr_lerpvar("nudgey", nudgey, 0, 140, 1, "out");
            scr_doom(self, 140);
        }
    });
    c_var_instance(hat, "visible", true);
    c_var_instance(hat, "x", 345);
    c_var_instance(hat, "y", 3640);
    c_var_instance(hat, "gravity", -0.1);
    c_var_instance(hat, "hspeed", -3);
    c_var_instance(hat, "friction", -0.02);
    c_wait(100);
    c_var_lerp_instance(id, "petalwinds", 1, 0, 20);
    c_lerp_var_instance(817, "anim_speed", 0.8, 0.2, 20);
    c_customfunc(function()
    {
        sound_volume(wind_sound, 0, 25);
        
        with (obj_grassanim_new)
        {
            anim_length = 9;
            anim_speed = 0.2;
        }
    });
    c_sel(kr);
    c_facing("d");
    c_mus2("volume", 1, 30);
    c_wait(80);
    c_pannable(0);
    c_terminatekillactors();
}

if (con == 23 && !i_ex(obj_cutscene_master))
{
    scr_flag_set(1311, 0);
    
    with (obj_plat_follower)
    {
        if (name == "ralsei")
            get_preset(2);
    }
    
    global.interact = 0;
    global.facing = 0;
    platcon = 1;
    con = -99;
}

if (con >= 23 && global.flag[24] == 1)
    obj_platswap_statue.depth = 1500000;

if (platcon > 0 && !global.pause_plat && i_ex(obj_plat_player))
{
    mus_volume(global.currentsong[1], 1, 30);
    scr_get_plat_followers();
    
    if (plat_susie == -4 || plat_ralsei == -4)
        exit;
}
