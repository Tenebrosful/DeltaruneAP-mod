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
            switch (data[i].cmd)
            {
                case "Connected":
                    global.AP_isAuthenticated = 2;
                    show_debug_message("Login successful!");

                    // Save AP connection info
                    ap_settings = 
                    {
                        server: global.AP_server,
                        port: global.AP_port,
                        name: global.AP_name,
                        password: global.AP_password
                    };
                    ap_setting_json = json_stringify(ap_settings);
                    AP_write_settings_file(ap_setting_json);

                    /// Unlock all chapters if randomized_chapters = all_unlocked
                    if (data[i].slot_data.options.randomize_chapters == "all_unlocked")
                    {
                        for (var ii = 1; ii <= (array_length(global.AP_chapter) - 1); ii++)
                            global.AP_chapter[ii] = true;
                    }

                    break;
                
                case "ConnectionRefused":
                    global.AP_isAuthenticated = 1;
                    show_debug_message("Login failed");
                    network_destroy(global.AP_socket);
                    global.AP_socket = -1;
                    break;

                // Unlock chapters
                case "ReceivedItems":
                    if variable_struct_exists(data[i], "items") {
                        for (var ii = 0; ii < array_length(data[i].items); ++ii) {
                            if(data[i].items[ii].item >= 90000)
                                global.AP_chapter[data[i].items[ii].item - 89999] = true
                        }
                    }
                    
            }

                
        }
    }
}
