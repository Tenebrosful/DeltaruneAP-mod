/// PATCH

/// REPLACE
if (con == 1)
{
    var hasjokesleft = true;
    
    if (array_length(jokes) == 0)
        hasjokesleft = false;
    
    global.interact = 1;
    global.msc = -99;
    global.choice = -1;
    global.choicemsg[0] = stringsetloc("#Tell a Joke", "obj_dw_church_jackenstein_pumpkinNPC_slash_Step_0_gml_15_0");
    global.choicemsg[1] = stringsetloc("#Tell a Story", "obj_dw_church_jackenstein_pumpkinNPC_slash_Step_0_gml_16_0");
    
    if (hasjokesleft == false)
    {
        global.choicemsg[0] = global.choicemsg[1];
        global.choicemsg[1] = stringsetloc("#Don't", "obj_dw_church_jackenstein_pumpkinNPC_slash_Step_0_gml_20_0");
    }
    
    global.choicemsg[2] = stringset("");
    global.choicemsg[3] = stringset("");
    scr_speaker("no_name");
    msgsetloc(0, "* (...)/", "obj_dw_church_jackenstein_pumpkinNPC_slash_Step_0_gml_26_0");
    msgnext("\\C2 ");
    d_make();
    con = 2;
    
    if (hasjokesleft == false)
        con = 40;
}
/// CODE
if (con == 1)
{
    if (room == room_dw_church_trueclimbadventure)
    {
        global.interact = 1;
        global.msc = -99;
        
        if (spoken == 0)
        {
            con = 50;
        }
        else if (spoken >= 1)
        {
            timer = 0;
            con = 55;
        }
        
        spoken += 1;
    }
    else
    {
        var hasjokesleft = true;
        
        if (array_length(jokes) == 0)
            hasjokesleft = false;
        
        global.interact = 1;
        global.msc = -99;
        global.choice = -1;
        global.choicemsg[0] = stringsetloc("#Tell a Joke", "obj_dw_church_jackenstein_pumpkinNPC_slash_Step_0_gml_15_0");
        global.choicemsg[1] = stringsetloc("#Tell a Story", "obj_dw_church_jackenstein_pumpkinNPC_slash_Step_0_gml_16_0");
        
        if (hasjokesleft == false)
        {
            global.choicemsg[0] = global.choicemsg[1];
            global.choicemsg[1] = stringsetloc("#Don't", "obj_dw_church_jackenstein_pumpkinNPC_slash_Step_0_gml_20_0");
        }
        
        global.choicemsg[2] = stringset("");
        global.choicemsg[3] = stringset("");
        scr_speaker("no_name");
        msgsetloc(0, "* (...)/", "obj_dw_church_jackenstein_pumpkinNPC_slash_Step_0_gml_26_0");
        msgnext("\\C2 ");
        d_make();
        con = 2;
        
        if (hasjokesleft == false)
            con = 40;
    }
}

if (con == 50 && !d_ex())
{
    laughing = true;
    imgind = 0;
    laughingtime = 0;
    snd_play(snd_jackolantern_laugh);
    con = 51;
    scr_delay_var("con", 52, 64);
}

if (con == 52)
{
    laughing = false;
    scr_speaker("no_name");
    msgsetloc(0, "* (It seems to be lost...)/", "obj_dw_church_jackenstein_pumpkinNPC_slash_Step_0_gml_113_0");
    msgnextloc("* (Maybe finding its owner would help?)/%", "obj_dw_church_jackenstein_pumpkinNPC_slash_Step_0_gml_113_0");
    d_make();
    con = 53;
}

if (con == 53 && !d_ex())
{
    global.interact = 0;
    con = 0;
}

if (con == 55)
{
    timer++;
    
    if (spoken < 3)
    {
        if (timer == 1)
            scr_lerpvar("mouthangle", 0, 180, 15, -1, "out");
    }
    
    if (timer == 15)
    {
        var loc = [x - 168, y - 144];
        
        if (global.lang == "ja")
            loc = [x - 168 - 26, (y - 144) + 40];
        
        instance_create(loc[0], loc[1], obj_takingtoolong);
        var snd = 525;
        
        if (global.lang == "ja")
            snd = 150;
        
        snd_play(snd, 0.7);
    }
    
    if (timer == 100)
    {
        scr_speaker("no_name");
        msgsetloc(0, "* (You should probably figure out where it belongs...)/%", "obj_dw_church_jackenstein_pumpkinNPC_slash_Step_0_gml_176_0");
        d_make();
        con = 56;
    }
}

if (con == 56 && !d_ex())
{
    global.interact = 0;
    con = 0;
}
/// END