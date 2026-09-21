/// IMPORT
if (ds_map_exists(async_load, "buffer"))
{
    var buff = ds_map_find_value(async_load, "buffer");
    buffer_seek(buff, buffer_seek_start, 0);
    var response = buffer_read(buff, buffer_string);
    var data = json_parse(response);
    
    for (var i = 0; i < array_length(data); i++)
    {
        show_debug_message("Receiving package from server")
        if (variable_struct_exists(data[i], "cmd"))
        {
            
            show_debug_message(data[i].cmd)
            if(data[i].cmd != "DataPackage")
            {
                show_debug_message(data[i])
            }
            // get archipelago multiworld
            if(global.AP_multiworld == 0)
			    global.AP_multiworld = data[0].seed_name;

            switch (data[i].cmd)
            {
                case "RoomInfo":
                    AP_async_handle_roominfo(data[i])
                    break;
                case "Connected":
                    AP_async_handle_connected(data[i])
                    break;
                case "ConnectionRefused":
                    AP_async_handle_connectionrefused(data[i])
                    break;
                case "ReceivedItems":
                    AP_async_receiveditems(data[i])
                    break;
                case "Bounced":
                    AP_async_handle_bounced(data[i]);
                    break;
                case "LocationInfo":
                    AP_async_handle_locationinfo(data[i]);
                    break;
                case "DataPackage":
                    AP_async_handle_datapackage(data[i])
                    break;
                case "Retrieved":
                    AP_async_handle_retrieved(data[i])
                    break;
                case "SetReply":
                    AP_async_handle_setreply(data[i])
                    break;
                case "ProxyDisconnect":
                    AP_disconnect();
                    break;
            }
        }
    }
}