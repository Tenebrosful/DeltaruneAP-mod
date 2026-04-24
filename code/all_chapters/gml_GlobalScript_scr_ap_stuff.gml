/// FUNCTIONS

function scr_victory(arg0)
{
    chapter_list = [1, 2, 3, 4, 5, 6, 7];
    if (global.customflags[999] == 0)
        switch (arg0)
        {
            case 0:
                break;
            case 1:
                AP_sendLocation(185);
            case 2:
                AP_sendLocation(186);
            case 3:
                AP_sendLocation(187);
            case 4:
                AP_sendLocation(225);
            default:
                break;
        }
    file = file_text_open_append("ch" + string(arg0) + ".complete");
    file_text_close(file);
    complete = 0;
    for (var i = 1; i < array_length(chapter_list); i += 1)
    {
        if ((file_exists(string("ch{0}.route", chapter_list[i])) == 1 && file_exists(string("ch{0}.complete", chapter_list[i])) == 1) || file_exists(string("ch{0}.route", chapter_list[i])) == 0)
            complete += 1;
        else
            complete += 0;
    }
    if (complete == 6)
    {
        file = file_text_open_append("ch" + string(arg0) + ".victory");
        file_text_close(file);
    }
}

function AP_sendLocation(location_id)
{
    noroom = 0;
    obj_archipelago_client.AP_sendLocation(location_id);
}

function AP_sendHint(location_id)
{
    noroom = 0;
    obj_archipelago_client.AP_sendHint(location_id);
}

function scr_ap_death_link()
{
    if (file_exists("deathlink.flag"))
    {
        file = file_text_open_append("DontBeMad.mad");
        file_text_close(file);
    }
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

function AP_create()
{
    scr_ap_const()
    canshowtext = 1;
    showingitem = 0;
    index = 0;
    wait = 0;
    dslst = ds_list_create();
    
    if (file_exists("receivingtype.start"))
        global.ap_check_item_anytime = false;
    else
        global.ap_check_item_anytime = true;
    
    if (global.ap_check_item_anytime)
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
    switch (flags)
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

function ap_are_we_connected(){
    
}

function AP_steap()
{
    if (global.darkzone == 1)
    {
        if (canshowtext)
        {
            if (file_exists("deathlink.flag") && file_exists("WelcomeToTheDead.youDied"))
                scr_gameover();
            
            if (wait == 1 && obj_archipelago_client.AP_isAuthenticated() && instance_exists(obj_dialoguer) == 0)
            {
                wait = 0;
                global.interact = 0;
            }
            else if (wait == 1 && !obj_archipelago_client.AP_isAuthenticated() && instance_exists(obj_dialoguer) == 0)
            {
                script_execute(scr_writetext, 0, "\\s0* (We are trying to reconnect...)/%", 0, 6);
                obj_archipelago_client.Connect();
                wait = 1;
                global.interact = 1;
            }
            
            if (global.interact == 0 && instance_exists(obj_fadein) == 0 && instance_exists(obj_fadeout) == 0 && instance_exists(obj_dialoguer) == 0 && cutscene == 0)
            {
                if (!obj_archipelago_client.AP_isAuthenticated())
                {
                    script_execute(scr_writetext, 0, "\\s0* (You get the sinking feeling that you have disconnected from the Multiworld.)/%", 0, 6);
                    obj_archipelago_client.Connect();
                    wait = 1;
                    global.interact = 1;
                }
                
                if (ds_list_size(dslst) <= 0 && global.ap_check_item_anytime)
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
                            var chapterOffset = global.chapter - 1;
                            noroom = 0;
                            trueitm = real(string_digits(file_text_read_string(fl)));
                            var itm = trueitm;
                            
                            scr_ap_handle_receive_item(itm)
                            
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

function AP_load()
{
    global.apbalancing = file_exists("balancing.flag");
    
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
    
    global.MacGuffin_count = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
}

function AP_save()
{
    global.apbalancing = file_exists("balancing.flag");
    
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
    
    file_text_writeln(myfileid);
    file_text_write_real(myfileid, global.MacGuffin_count);
}

function AP_game_start()
{
    if (!instance_exists(obj_archipelago_client))
    {
        instance_create(0, 0, obj_archipelago_client);
        if(!obj_archipelago_client.AP_isAuthenticated())
            obj_archipelago_client.AP_connect();
    }

    global.apbalancing = file_exists("balancing.flag")
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
