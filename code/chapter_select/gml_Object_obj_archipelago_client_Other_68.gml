/// IMPORT

var buff, response;

if (ds_map_find_value(async_load, "size") > 0)
{
    buff = ds_map_find_value(async_load, "buffer");
    buffer_seek(buff, buffer_seek_start, 0);
    response = buffer_read(buff, buffer_string);
}

buffer_seek(buff, buffer_seek_start, 0);
var data = json_parse(response);

for (var i = 0; i < array_length(data); i++)
{
    if (variable_struct_exists(data[i], "cmd"))
    {
        if (data[i].cmd == "Connected")
        {
            global.AP_isAuthenticated = 2;
            show_debug_message("Login successful!");
        }
        
        if (data[i].cmd == "ConnectionRefused")
        {
            global.AP_isAuthenticated = 1;
            show_debug_message("Login failed");
        }
    }
}
