/// PATCH

/// REPLACE
    global.interact = 1;
    con = 1;
    scr_speaker("no_name");
    msgsetloc(0, "USED THE \\cYSHELTER KEY\\cW./%", "obj_board_warptopreshadowmantle_slash_Step_0_gml_8_0");
    bw_make();
    global.flag[1055] = 5;
    timer = 0;
    
    with (obj_board_screenColorChanger)
        instance_destroy();
/// CODE
    if (global.customflags[26] == 0)
    {
        con = 19;
        timer = 0;
        global.interact = 1;
    }
    else
    {
        global.interact = 1;
        con = 1;
        scr_speaker("no_name");
        msgsetloc(0, "USED THE \\cYSHELTER KEY\\cW./%", "obj_board_warptopreshadowmantle_slash_Step_0_gml_8_0");
        bw_make();
        global.flag[1055] = 5;
        timer = 0;
        
        with (obj_board_screenColorChanger)
            instance_destroy();
    }
/// END

/// AFTER
if (con == 3)
{
    if (transition.con == 2 && transition.timer == 2)
    {
        room_goto(room_board_preshadowmantle);
        global.flag[1055] = 5;
/// CODE
        global.customflags[29] = 1;
/// END

/// APPEND

if (con == 19)
{
    timer++;
    
    if (timer == 30)
    {
        timer = 0;
        con = 20;
    }
}

if (con == 20)
{
    timer++;
    
    if (timer == 15)
    {
        global.flag[1103] = 1;
        depth = 100000;
        drawblue = true;
        obj_gameshow_swordroute.drawui = false;
        obj_gameshow_swordroute.screencolor = 13387839;
        snd_play(snd_nes_nocontroller);
        drawtext = 1;
    }
    
    if (timer == 210)
    {
        con = 21;
        timer = 89;
    }
}

if (con == 21)
{
    timer++;
    
    if (timer == 90)
    {
        drawtext = false;
        drawblue = false;
        drawblack = true;
        snd_play(snd_noise);
        obj_board_controller.drawcrt = false;
        obj_gameshow_swordroute.screencolor = 0;
        global.swordscreencolor = 0;
        global.flag[1007] = 1;
    }
    
    if (timer == 99)
        global.facing = 0;
    
    if (timer == 100)
    {
        global.interact = 0;
        global.facing = 0;
        global.entrance = 2;
        room_goto(room_board_sword_intro);
    }
}
/// END