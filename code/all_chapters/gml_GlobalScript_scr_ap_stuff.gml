/// FUNCTIONS
function scr_ap_stuff()
{
}

function scr_victory(arg0)
{
    noroom = 0;
    
    if (global.customflags[999] == 0)
        scr_checkspot(185);
    
    file = file_text_open_append("ch" + string(arg0) + ".complete");
    file_text_close(file);
    var complete = 1;
    
    if (((file_exists("ch2.route") == 1 && file_exists("ch2.complete") == 1) || file_exists("ch2.route") == 0) && complete == 1)
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
    scr_ap_const()
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

    var file = file_text_open_read("scouting.json")
    global.ap_location_item = json_parse(file_text_read_string(file));
    file_text_close(file)
}

function scr_ap_get_location_reward_text(location_id)
{
    if !variable_struct_exists(global.ap_location_item, location_id) return "Unknown Item";

    var data = variable_struct_get(global.ap_location_item, location_id);

    if (data.playerName == "<yourself>")
        var text = string("your {0}", data.itemName);
    else
        var text = string("{0}'s {1}", data.playerName, data.itemName);
    return scr_ap_item_classification_color(text, data.flags);
}

function scr_ap_get_location_reward_data(location_id)
{
    if !variable_struct_exists(global.ap_location_item, location_id) return {playerName: "Unknown", itemName: "Unknown", flags: 000}
    var data = variable_struct_get(global.ap_location_item, location_id)
    if data.playerName == "<yourself>" data.playerName = "your"
    return variable_struct_get(global.ap_location_item, location_id)
}

function scr_ap_item_classification_color(text, flags)
{
    switch (flags)
    {
        case 0: 
            return string("\\cf{0}\\c0", text);
        case 1: 
            return string("\\cp{0}\\c0", text);
        case 2:
            return string("\\cu{0}\\c0", text);
        case 3:
            return string("\\cg{0}\\c0", text);
        case 4:
            return string("\\ct{0}\\c0", text);
        default : 
            return string("\\c0{0}\\c0", text);
    }
}

function scr_ap_item_classification_color_shop(flags){
    return draw_set_color(scr_ap_flags_to_color_classification(flags))
}

function scr_ap_flags_to_color_classification(flags){
    switch (flags[i])
    {
        case 0:
            return global.ap_filler_color
        case 1:
            return global.ap_progression_color
        case 2:
            return global.ap_usefull_color
        case 3:
            return global.ap_usefull_progression_color
        case 4:
            return global.ap_trap_color
        default:
            return c_white
    }
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
            
            if (global.interact == 0 && instance_exists(obj_fadein) == 0 && instance_exists(obj_fadeout) == 0 && instance_exists(obj_dialoguer) == 0 && cutscene == 0)
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
                        notext = 0;
                        
                        if (fl != "")
                        {
                            noroom = 0;
                            trueitm = real(string_digits(file_text_read_string(fl)));
                            var itm = trueitm;
                            
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
                                
                                if (trueitm == 70000)
                                {
                                    if (global.MacGuffin_count == 0)
                                        scr_keyitemget(700);
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
                                
                                if ((trueitm >= 10000 && trueitm <= 10007) || trueitm == 10013 || (trueitm >= 11000 && trueitm <= 11007) || (trueitm >= 11016 && trueitm <= 11017) || trueitm == 11020)
                                {
                                    later = 0;
                                    
                                    if (!((trueitm >= 11005 && trueitm <= 11007) || (trueitm >= 11016 && trueitm <= 11017) || trueitm == 11020))
                                    {
                                        if (scr_keyitemcheck(trueitm - 10000) == 0 || (trueitm - 10000) == 13 || (trueitm - 10000) == 4)
                                            scr_keyitemget(trueitm - 10000);
                                    }
                                }
                            }
                            else
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
                                global.fc = 0;
                                global.fe = 0;
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
                                        if (trueitm == 70000)
                                        {
                                            script_execute(scr_writetext, 0, "* (You got a King-Shaped Key Piece!)/%", 0, 6);
                                        }
                                        else
                                        {
                                            if (trueitm < 80000)
                                                global.customflags[trueitm - 67300] = 1;
                                            
                                            script_execute(scr_writetext, 0, "* (You got an item for another chapter.)/%", 0, 6);
                                        }
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
                                        if ((trueitm >= 10000 && trueitm <= 10007) || (trueitm == 10013 || (trueitm >= 11000 && trueitm <= 11007) || (trueitm >= 11016 && trueitm <= 11017) || trueitm == 11020))
                                        {
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
                                            }
                                        }
                                    }
                                    else
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
        
        if (showingitem == 1 && instance_exists(obj_dialoguer) == 0 && cutscene == 0)
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
    
    global.customflags[999] = 0;
    global.gotcheck = undefined;
    
    for (var i = 0; i < 9999; i++)
        global.gotcheck[i] = "-1";
    
    global.MacGuffin_count = 0;
    global.gotplot = undefined;
    
    for (var i = 0; i < 99; i += 1)
        global.gotplot[i] = 0;
}
