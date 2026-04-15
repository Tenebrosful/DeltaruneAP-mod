/// IMPORT
function scr_ap_stuff()
{
}

function scr_victory(arg0)
{
    noroom = 0;
    
    if (global.customflags[999] == 0)
        scr_checkspot(186);
    
    file = file_text_open_append("ch" + string(arg0) + ".complete");
    file_text_close(file);
    var complete = 1;
    
    if (((file_exists("ch1.route") == 1 && file_exists("ch1.complete") == 1) || file_exists("ch1.route") == 0) && complete == 1)
        complete = 1;
    else
        complete = 0;
    
    if (((file_exists("ch3.route") == 1 && file_exists("ch3.complete") == 1) || file_exists("ch3.route") == 0) && complete == 1)
        complete = 1;
    else
        complete = 0;
    
    if (((file_exists("ch4.route") == 1 && file_exists("ch4.complete") == 1) || file_exists("ch4.route") == 0) && complete == 1)
        complete = 1;
    else
        complete = 0;
    
    if (complete == 1)
    {
        file = file_text_open_append("ch" + string(arg0) + ".victory");
        file_text_close(file);
    }
}

function scr_checkspot(arg0)
{
    noroom = 0;
    file = file_text_open_append("check.spot");
    file_text_write_string(file, string(arg0));
    file_text_writeln(file);
    file_text_close(file);
    file = file_text_open_append("checkbackup.spot");
    file_text_write_string(file, string(arg0));
    file_text_writeln(file);
    file_text_close(file);
}

function scr_hintspot(arg0)
{
    noroom = 0;
    file = file_text_open_append("scout");
    file_text_write_string(file, string(arg0));
    file_text_writeln(file);
    file_text_close(file);
}

function scr_ap_death_link()
{
    if (file_exists("deathlink.flag"))
    {
        file = file_text_open_append("DontBeMad.mad");
        file_text_close(file);
    }
}

function scr_ap_get_check_completion()
{
}

function scr_findallfiles()
{
    var _list = ds_list_create();
    var _finished = 0;
    var _firstFile = file_find_first("*.item", 0);
    
    if (string_length(_firstFile) == 0)
        return _list;
    
    var found = 0;
    
    for (var i = 0; i < array_length_1d(global.gotcheck); i++)
    {
        if (global.gotcheck[i] == _firstFile)
        {
            found = 1;
            i = array_length_1d(global.gotcheck) - 1;
        }
    }
    
    if (file_exists(_firstFile) && found == 0)
        ds_list_add(_list, _firstFile);
    
    while (!_finished)
    {
        var _file = file_find_next();
        
        if (string_length(_file) == 0)
        {
            _finished = 1;
            break;
        }
        else
        {
            var _fullPath = _file;
            found = 0;
            
            for (var i = 0; i < array_length_1d(global.gotcheck); i++)
            {
                if (global.gotcheck[i] == _fullPath)
                {
                    found = 1;
                    i = array_length_1d(global.gotcheck) - 1;
                }
            }
            
            if (file_exists(_fullPath) && found == 0)
                ds_list_add(_list, _fullPath);
            
            continue;
        }
    }
    
    file_find_close();
    return _list;
}

function scr_ap_create()
{
    canshowtext = 1;
    showingitem = 0;
    index = 0;
    wait = 0;
    dslst = ds_list_create();
    
    if (file_exists("receivingtype.start"))
        global.customflags[38] = 1;
    else
        global.customflags[38] = 0;
    
    if (global.customflags[38] == 1)
        dslst = scr_findallfiles();
}

function scr_ap_get_macguffin_amount()
{
    file = file_text_open_read("macguffin_amount.flag");
    var to_return = file_text_read_real(file);
    file_text_close(file);
    return to_return;
}

function scr_ap_step()
{
    if (global.darkzone == 1)
    {
        if (canshowtext)
        {
            if (file_exists("deathlink.flag") && file_exists("WelcomeToTheDead.youDied"))
                scr_gameover();
            
            if (wait == 1 && file_exists("macguffin_amount.flag") && instance_exists(obj_dialoguer) == 0)
            {
                wait = 0;
                global.interact = 0;
            }
            else if (wait == 1 && !file_exists("macguffin_amount.flag") && instance_exists(obj_dialoguer) == 0)
            {
                script_execute(scr_writetext, 0, "\\s0* (You should probably reconnect to the Multiworld before continuing...)/%", 0, 6);
                wait = 1;
                global.interact = 1;
            }
            
            if (global.interact == 0 && instance_exists(obj_fadein) == 0 && instance_exists(obj_fadeout) == 0 && instance_exists(obj_dialoguer) == 0 && global.fighting == 0 && i_ex(obj_cutscene_master) == 0 && room != room_dw_cyber_post_music_boss_slide)
            {
                if (!file_exists("macguffin_amount.flag"))
                {
                    script_execute(scr_writetext, 0, "\\s0* (You get the sinking feeling that you have disconnected from the Multiworld.)/%", 0, 6);
                    wait = 1;
                    global.interact = 1;
                }
                
                if (ds_list_size(dslst) <= 0 && global.customflags[38] == 0)
                    dslst = scr_findallfiles();
                
                if (ds_list_size(dslst) > 0)
                {
                    var dslistitems = ds_list_create();
                    ds_list_copy(dslistitems, dslst);
                    
                    if (file_exists(ds_list_find_value(dslistitems, index)))
                    {
                        fl = file_text_open_read(ds_list_find_value(dslistitems, index));
                        later = 0;
                        
                        if (fl != "")
                        {
                            noroom = 0;
                            trueitm = real(string_digits(file_text_read_string(fl)));
                            var itm = trueitm;
                            notext = 0;
                            
                            if (trueitm >= 90000)
                            {
                                noroom = 0;
                                notext = 1;
                            }
                            else if (trueitm >= 80000)
                            {
                                global.flag[1044] += trueitm - 80000;
                            }
                            else if (trueitm >= 70000)
                            {
                                noroom = 0;
                                
                                if (trueitm == 70001)
                                {
                                    if (global.MacGuffin_count == 0)
                                        scr_keyitemget(701);
                                }
                                
                                global.MacGuffin_count += 1;
                            }
                            else if (trueitm >= 60000)
                            {
                                global.gotplot[trueitm - 60000] = 1;
                            }
                            else if (trueitm >= 50000)
                            {
                                global.unlocked_buttons[trueitm - 50000] = 1;
                            }
                            else if (trueitm >= 40000)
                            {
                                global.gold += (trueitm - 40000);
                            }
                            else if (trueitm >= 30000)
                            {
                                scr_weaponget(trueitm - 30000);
                            }
                            else if (trueitm >= 20000)
                            {
                                scr_armorget(trueitm - 20000);
                            }
                            else if (trueitm >= 10000)
                            {
                                later = 1;
                                
                                if ((trueitm >= 10008 && trueitm <= 10013) || (trueitm >= 11005 && trueitm <= 11011) || (trueitm >= 11016 && trueitm <= 11017) || trueitm == 11020)
                                {
                                    later = 0;
                                    
                                    if (trueitm == 11011)
                                        trueitm = 10002;
                                    
                                    if (trueitm != 11007)
                                    {
                                        if (!((trueitm >= 11005 && trueitm <= 11007) || (trueitm >= 11016 && trueitm <= 11017) || trueitm == 11020))
                                        {
                                            if (scr_keyitemcheck(trueitm - 10000) == 0 || (trueitm - 10000) == 13)
                                                scr_keyitemget(trueitm - 10000);
                                        }
                                        
                                        if (trueitm == 10002)
                                            trueitm = 11011;
                                    }
                                }
                            }
                            else if (trueitm != 4)
                            {
                                scr_itemget(trueitm);
                            }
                            
                            file_text_close(fl);
                            
                            if (noroom == 0)
                            {
                                for (var i = 0; i < array_length_1d(global.gotcheck); i++)
                                {
                                    if (global.gotcheck[i] == "-1")
                                    {
                                        global.gotcheck[i] = ds_list_find_value(dslistitems, index);
                                        i = array_length_1d(global.gotcheck) + 999;
                                    }
                                }
                                
                                global.interact = 1;
                                global.typer = 6;
                                showingitem = 1;
                                
                                if (notext == 0 && string_char_at(ds_list_find_value(dslistitems, index), 1) != "-")
                                {
                                    if (later == 1)
                                    {
                                        global.customflags[trueitm - 8000] = 1;
                                        script_execute(scr_writetext, 0, "* (You got an item for another chapter.)/%", 0, 6);
                                    }
                                    else if (trueitm >= 70000)
                                    {
                                        if (trueitm == 70001)
                                        {
                                            script_execute(scr_writetext, 0, "* (You got a KeyGen 2 Segment!)/%", 0, 6);
                                        }
                                        else
                                        {
                                            if (trueitm < 80000)
                                                global.customflags[trueitm - 67300] = 1;
                                            
                                            script_execute(scr_writetext, 0, "* (You got an item for another chapter.)/%", 0, 6);
                                        }
                                    }
                                    else if (trueitm == 70001)
                                    {
                                        script_execute(scr_writetext, 0, "* (You got a KeyGen 2 Segment!)/%", 0, 6);
                                    }
                                    else if (trueitm >= 50000)
                                    {
                                        if (trueitm == 50004)
                                            script_execute(scr_writetext, 0, "* (You got the Cyber Field Warp!)/%", 0, 6);
                                        else if (trueitm == 50005)
                                            script_execute(scr_writetext, 0, "* (You got the Trash Zone Warp!)/%", 0, 6);
                                        else if (trueitm == 50006)
                                            script_execute(scr_writetext, 0, "* (You got the Mansion Warp!)/%", 0, 6);
                                    }
                                    else if (trueitm >= 40000)
                                    {
                                        script_execute(scr_writetext, 0, scr_84_get_subst_string("* You got D$~1!/%", trueitm - 40000), 0, 6);
                                    }
                                    else if (trueitm >= 30000)
                                    {
                                        scr_weaponinfo(trueitm - 30000);
                                        itemname = weaponnametemp;
                                        script_execute(scr_writetext, 0, scr_84_get_subst_string("* You got ~1!/%", itemname), 0, 6);
                                    }
                                    else if (trueitm >= 20000)
                                    {
                                        scr_armorinfo(trueitm - 20000);
                                        itemname = armornametemp;
                                        script_execute(scr_writetext, 0, scr_84_get_subst_string("* You got ~1!/%", itemname), 0, 6);
                                    }
                                    else if (trueitm >= 10000)
                                    {
                                        if ((trueitm >= 10008 && trueitm <= 10013) || (trueitm >= 11006 && trueitm <= 11011) || (trueitm >= 11016 && trueitm <= 11017) || trueitm == 11020)
                                        {
                                            if (trueitm == 11011)
                                                trueitm = 10002;
                                            
                                            if (trueitm == 11005)
                                            {
                                                global.hp[1] = global.maxhp[1];
                                                snd_play(snd_swallow);
                                                script_execute(scr_writetext, 0, "* (You ate the moss.^1)&* (Tastes..^1. mossy.^1)&* (Your HP was mossed out.)/%", 0, 6);
                                            }
                                            else if (trueitm == 11007)
                                            {
                                                global.hp[1] = global.maxhp[1];
                                                global.msc = 0;
                                                global.typer = 6;
                                                global.fc = 0;
                                                global.fe = 0;
                                                global.interact = 1;
                                                global.msg[0] = "\\s0* You got the \\cG[Moss]\\cW^8!/%";
                                                d_make();
                                                snd_play(snd_moss_fanfare);
                                                snd_pause(global.currentsong[1]);
                                                scr_script_delayed(snd_resume, 100, global.currentsong[1]);
                                            }
                                            else if (trueitm == 11006)
                                            {
                                                script_execute(scr_writetext, 0, "* You recieved Joe's Life Savings($1)!/%", 0, 6);
                                                global.gold += 1;
                                            }
                                            else if (trueitm == 11017)
                                            {
                                                global.hp[1] = global.maxhp[1];
                                                snd_play(snd_swallow);
                                                script_execute(scr_writetext, 0, "* (\\cGMoss\\cW sent to you.^1)&* (It was consumed.)/%", 0, 6);
                                            }
                                            else if (trueitm == 11016)
                                            {
                                                script_execute(scr_writetext, 0, "\\s0* You felt it smile^3./%", 0, 6);
                                                snd_play(snd_creepyjingle);
                                            }
                                            else if (trueitm == 11020)
                                            {
                                                global.hp[1] = global.maxhp[1];
                                                global.msc = 0;
                                                global.typer = 6;
                                                global.fc = 0;
                                                global.fe = 0;
                                                global.interact = 1;
                                                global.msg[0] = "\\s0* The moss was consumed with gusto^8!/%";
                                                d_make();
                                                snd_play(snd_moss_fanfare);
                                                snd_pause(global.currentsong[1]);
                                                scr_script_delayed(snd_resume, 100, global.currentsong[1]);
                                            }
                                            else
                                            {
                                                scr_keyiteminfo(trueitm - 10000);
                                                itemname = tempkeyitemname;
                                                script_execute(scr_writetext, 0, scr_84_get_subst_string("* You got ~1!/%", itemname), 0, 6);
                                                
                                                if (trueitm == 10002)
                                                    trueitm = 11011;
                                            }
                                        }
                                    }
                                    else if (trueitm != 4)
                                    {
                                        scr_iteminfo(trueitm);
                                        itemname = itemnameb;
                                        script_execute(scr_writetext, 0, scr_84_get_subst_string("* You got ~1!/%", itemname), 0, 6);
                                    }
                                }
                                
                                ds_list_delete(dslst, index);
                            }
                            else
                            {
                                index += 1;
                            }
                        }
                        else
                        {
                            index += 1;
                        }
                    }
                    else
                    {
                        index += 1;
                    }
                    
                    if (index >= ds_list_size(dslst))
                        index = 0;
                    
                    ds_list_destroy(dslistitems);
                }
            }
        }
        else
        {
            canshowtext = 1;
        }
        
        if (showingitem == 1 && instance_exists(obj_dialoguer) == 0 && !i_ex(obj_cutscene_master))
        {
            global.interact = 0;
            showingitem = 0;
        }
    }
}

function scr_ap_load()
{
    global.apbalancing = file_exists("balancing.flag");
    
    for (i = 0; i < 99; i += 1)
    {
        global.unlocked_buttons[i] = ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
    }
    
    for (i = 0; i < 9999; i += 1)
    {
        global.gotcheck[i] = ossafe_file_text_read_string(myfileid);
        ossafe_file_text_readln(myfileid);
    }
    
    for (i = 0; i < 9999; i += 1)
    {
        global.customflags[i] = ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
    }
    
    for (i = 0; i < 99; i += 1)
    {
        global.gotplot[i] = ossafe_file_text_read_real(myfileid);
        ossafe_file_text_readln(myfileid);
    }
    
    global.MacGuffin_count = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
}

function scr_ap_save()
{
    global.apbalancing = file_exists("balancing.flag");
    
    for (i = 0; i < 99; i += 1)
    {
        file_text_writeln(myfileid);
        file_text_write_real(myfileid, global.unlocked_buttons[i]);
    }
    
    for (i = 0; i < 9999; i += 1)
    {
        file_text_writeln(myfileid);
        file_text_write_string(myfileid, global.gotcheck[i]);
    }
    
    for (i = 0; i < 9999; i += 1)
    {
        file_text_writeln(myfileid);
        file_text_write_real(myfileid, global.customflags[i]);
    }
    
    for (i = 0; i < 99; i += 1)
    {
        file_text_writeln(myfileid);
        file_text_write_real(myfileid, global.gotplot[i]);
    }
    
    file_text_writeln(myfileid);
    file_text_write_real(myfileid, global.MacGuffin_count);
}

function scr_ap_game_start()
{
    global.apbalancing = file_exists("balancing.flag");
    global.unlocked_buttons = undefined;
    
    for (var i = 0; i < 99; i++)
        global.unlocked_buttons[i] = 0;
    
    global.customflags = undefined;
    
    for (var i = 0; i < 9999; i++)
        global.customflags[i] = 0;
    
    global.gotcheck = undefined;
    
    for (var i = 0; i < 9999; i++)
        global.gotcheck[i] = "-1";
    
    global.MacGuffin_count = 0;
    global.gotplot = undefined;
    
    for (var i = 0; i < 99; i += 1)
        global.gotplot[i] = 0;
}
