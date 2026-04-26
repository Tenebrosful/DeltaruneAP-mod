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
                    
                    if (data[i].slot_data.options.randomize_chapters == "all_unlocked")
                    {
                        for (var ii = 1; ii <= (array_length(global.AP_chapter_unlocked) - 1); ii++)
                            global.AP_chapter_unlocked[ii] = true;
                    }

                    global.AP_balancing = data[i].slot_data.options.item_balancing
                    global.AP_macguffin_required[0] = data[i].slot_data.options.macguffin_chapter_1;
                    global.AP_macguffin_required[1] = data[i].slot_data.options.macguffin_chapter_2;
                    global.AP_macguffin_required[2] = data[i].slot_data.options.macguffin_chapter_3;
                    global.AP_macguffin_required[3] = data[i].slot_data.options.macguffin_chapter_4;
                    global.AP_secret_bosses_mandatory = data[i].slot_data.options.randomize_secret_bosses == 2;
                    global.AP_deathlink = data[i].slot_data.options.death_link;

                    var path = global.AP_multiworld + "/settings.json"

                    if (file_exists(path))
                    {
                        var file = file_text_open_read(path);
                        var content = file_text_read_string(file);

                        if (content != -1)
                            settings_struct = json_parse(content);

                        global.AP_deathlink = settings_struct.deathLink;
                    }

                    AP_write_settings_file();
                    AP_updateTags();
                    
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
                            global.AP_item_from_server = [];
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
                case "Bounced":
                    if (variable_struct_exists(data[i], "tags"))
                    {
                        for (var ii = 0; ii < array_length(data[i].tags); ii++)
                        {
                            if (data[i].tags[ii] == "DeathLink")
                            {
                                if (variable_global_exists("chapter"))
                                {
                                    var time;
                                    if (variable_struct_exists(data[i].data, "time"))
                                        if (data[i].data.time == global.AP_deathlink_infos.time)
                                            continue;
                                        else
                                            time = data[i].data.time;
                                    else
                                        time = undefined;

                                    global.AP_deathlink_protected = true;
                                    
                                    var source;
                                    if (variable_struct_exists(data[i].data, "source"))
                                    {
                                        if (data[i].data.source == global.AP_name)
                                            continue;
                                        else
                                            source = data[i].data.source;
                                    }
                                    else
                                        source = undefined;

                                    var cause;
                                    if (variable_struct_exists(data[i].data, "cause"))
                                        cause = data[i].data.cause;
                                    else
                                        cause = undefined;


                                    global.AP_deathlink_infos = {source: source, cause: cause, time: time};
                                    AP_handle_DeathLink();
                                }
                            }
                        }
                    }
                    break;
            }
        }
    }
}
