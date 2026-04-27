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

function AP_create()
{
    canshowtext = 1;
    showingitem = 0;
    index = 0;
    wait = 0;
}

function scr_ap_get_location_reward_text(location_id)
{
    if !variable_struct_exists(global.AP_location_item, location_id) return "Unknown Item";

    var data = variable_struct_get(global.AP_location_item, location_id);

    if (data.playerName == "<yourself>")
        var text = string("your {0}", data.itemName);
    else
        var text = string("{0}'s {1}", data.playerName, data.itemName);
    return AP_item_classification_color_text(text, data.flags);
}

function scr_ap_get_location_reward_data(location_id)
{
    if !variable_struct_exists(global.AP_location_item, location_id) return {playerName: "Unknown", itemName: "Unknown", flags: 000}
    var data = variable_struct_get(global.AP_location_item, location_id)
    if data.playerName == "<yourself>" data.playerName = "Yourself"
    return variable_struct_get(global.AP_location_item, location_id)
}

function AP_item_classification_color_text(text, flags)
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

function AP_item_classification_color_shop(flags){
    return draw_set_color(AP_item_flag_to_color(flags))
}

function AP_item_flag_to_color(flags){
    switch (flags)
    {
        case 0:
            return global.AP_color.filler
        case 1:
            return global.AP_color.progression
        case 2:
            return global.AP_color.useful
        case 3:
            return global.AP_color.useful_progression
        case 4:
            return global.AP_color.trap
        default:
            return c_white
    }
}

function AP_handle_DeathLink()
{
    if (global.chapter != 3)
    {
        scr_gameover();
        global.AP_deathlink_protected = false;
    }
}

function AP_step()
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
                if (!instance_exists(obj_archipelago_client))
                {
                    instance_create(0, 0, obj_archipelago_client);
                }

                if(!obj_archipelago_client.AP_isAuthenticated())
                    obj_archipelago_client.AP_connect();

                wait = 1;
                global.interact = 1;
            }
            
            if (global.interact == 0 && instance_exists(obj_fadein) == 0 && instance_exists(obj_fadeout) == 0 && instance_exists(obj_dialoguer) == 0 && cutscene == 0)
            {
                if (!obj_archipelago_client.AP_isAuthenticated())
                {
                    script_execute(scr_writetext, 0, "\\s0* (You get the sinking feeling that you have disconnected from the Multiworld.)/%", 0, 6);
                    
                    if (!instance_exists(obj_archipelago_client))
                    {
                        instance_create(0, 0, obj_archipelago_client);
                    }
                    
                    if(!obj_archipelago_client.AP_isAuthenticated())
                        obj_archipelago_client.AP_connect();
                        
                    wait = 1;
                    global.interact = 1;
                }

                if (!variable_global_exists("AP_items_waiting_to_receive") || global.AP_items_waiting_to_receive == undefined)
                {
                    AP_sync_item_from_server();
                    index = 0;
                }
                
                if (index >= array_length(global.AP_items_waiting_to_receive))
                {
                    global.AP_items_waiting_to_receive = undefined;
                }
                else if (variable_global_exists("AP_items_waiting_to_receive") && global.AP_items_waiting_to_receive != undefined && array_length(global.AP_items_waiting_to_receive) > 0)
                {
                    var item_id = global.AP_items_waiting_to_receive[index];
                    AP_handle_receive_item(item_id);
                    array_insert(global.AP_item_got_in_current_chapter, array_length(global.AP_item_got_in_current_chapter), item_id);
                    index++;
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
    global.AP_item_got_in_current_chapter = undefined;
    global.customflags = undefined;

    var array_size = ossafe_file_text_read_real(myfileid);
    ossafe_file_text_readln(myfileid);
    
    for (i = 0; i < array_size; i++)
    {
        global.AP_item_got_in_current_chapter[i] = ossafe_file_text_read_real(myfileid);
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
    file_text_writeln(myfileid);
    file_text_write_real(myfileid, array_length(global.AP_item_got_in_current_chapter));

    for (i = 0; i < array_length(global.AP_item_got_in_current_chapter); i++)
    {
        file_text_writeln(myfileid);
        file_text_write_real(myfileid, global.AP_item_got_in_current_chapter[i]);
    }
    
    for (i = 0; i < array_length(global.customflags); i += 1)
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

    global.AP_item_got_in_current_chapter = [];
    global.customflags = [];
    global.AP_items_waiting_to_receive = undefined;
    global.MacGuffin_count = 0;

    for (var i = 0; i < 9999; i++)
        global.customflags[i] = 0;
}
