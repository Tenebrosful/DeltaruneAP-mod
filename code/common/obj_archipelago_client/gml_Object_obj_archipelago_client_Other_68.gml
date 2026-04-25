/// IMPORT
var type = ds_map_find_value(async_load, "type");

if (type == 1)
{
    if (ds_map_find_value(async_load, "socket") == global.AP_socket)
    {
        if (ds_map_find_value(async_load, "success"))
        {
            show_debug_message("Connection failed (no server)");
            global.AP_isAuthenticated = 1;
            network_destroy(global.AP_socket);
            global.AP_socket = -1;
        }
    }
}

if (ds_map_exists(async_load, "buffer"))
{
    var buff = ds_map_find_value(async_load, "buffer");
    buffer_seek(buff, buffer_seek_start, 0);
    var response = buffer_read(buff, buffer_string);
    var data = json_parse(response);
    
    for (var i = 0; i < array_length(data); i++)
    {
        if (variable_struct_exists(data[i], "cmd"))
        {
            // get archipelago multiworld
            if(global.AP_multiworld == 0)
			    global.AP_multiworld = data[0].seed_name;

            switch (data[i].cmd)
            {
                case "Connected":
                    global.AP_isAuthenticated = 2;
                    show_debug_message("Login successful!");
                    AP_write_settings_file();
                    
                    if (data[i].slot_data.options.randomize_chapters == "all_unlocked")
                    {
                        for (var ii = 1; ii <= (array_length(global.AP_chapter_unlocked) - 1); ii++)
                            global.AP_chapter_unlocked[ii] = true;
                    }
                    var path = global.AP_multiworld + "/settings.json"
                    if(!file_exists(path)){
                        global.AP_deathLink = data[i].slot_data.options.death_link
                        global.AP_balancing = data[i].slot_data.options.item_balancing
                        global.AP_macguffin_required[0] = data[i].slot_data.options.macguffin_required_ch1;
                        global.AP_macguffin_required[1] = data[i].slot_data.options.macguffin_required_ch2;
                        global.AP_macguffin_required[2] = data[i].slot_data.options.macguffin_required_ch3;
                        global.AP_macguffin_required[3] = data[i].slot_data.options.macguffin_required_ch4;
                        global.AP_secret_bosses_mandatory = data[i].slot_data.options.secret_bosses_mandatory;
                        settings = 
                        {
                            deathLink: global.AP_deathLink
                        }
                        setting_json = json_stringify(settings);
                        var file = file_text_open_write(path);
                        file_text_write_string(file, setting_json);
                        file_text_close(file);
                    } else {
                        var file = file_text_open_read(path);
                        var content = file_text_read_string(file);
                        if (content != -1)
                            settings_struct = json_parse(content);
                        if (global.AP_deathLink != settings_struct.deathLink)
                        {
                            settings = 
                            {
                                deathLink: global.AP_deathLink
                            };
                            AP_write_settings_file();
                        }
                        else
                        {
                            global.AP_deathLink = settings_struct.deathLink;
                        }
                    }
                    
                    break;
                
                case "ConnectionRefused":
                    global.AP_isAuthenticated = 1;
                    show_debug_message("Login failed");
                    network_destroy(global.AP_socket);
                    global.AP_socket = -1;
                    break;
                
                case "ReceivedItems":
                    if (variable_struct_exists(data[i], "items"))
                    {
                        // If we are Chapter Select, looking only for chapter unlock
                        if (!variable_global_exists("chapter"))
                        {
                            for (var ii = 0; ii < array_length(data[i].items); ii++)
                            {
                                if (data[i].items[ii].item >= global.AP_item_offset.chapter_unlock)
                                {
                                    global.AP_chapter_unlocked[data[i].items[ii].item - global.AP_item_offset.chapter_unlock] = true
                                }
                            }
                        }
                        // Receiving items after reconnect
                        else if (!variable_global_exists("AP_item_from_server"))
                        {
                            global.AP_item_from_server = undefined;
                            for (var ii = 0; ii < array_length(data[i].items); ii++)
                            {
                                global.AP_item_from_server[ii] = data[i].items[ii].item;
                            } 
                        }
                        // Receiving items while playing chapter
                        else
                        {
                            var starting_index = array_length(global.AP_item_from_server);
                            for (var ii = 0; ii < array_length(data[i].items); ii++)
                            {
                                global.AP_item_from_server[starting_index + ii] = data[i].items[ii].item;
                            }
                        }
                    }
                    break;
            }
        }
    }
}
