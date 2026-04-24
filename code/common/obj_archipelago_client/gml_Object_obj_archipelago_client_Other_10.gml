/// IMPORT

function AP_write_settings_file()
{
    ap_settings = 
    {
        server: global.AP_server,
        port: global.AP_port,
        name: global.AP_name,
        password: global.AP_password,
        settings: 
        {
            colors: global.AP_colors
        }
    };
    ap_setting_json = json_stringify(ap_settings);
    var file = file_text_open_write("ap_settings.json");
    file_text_write_string(file, ap_setting_json);
    file_text_close(file);
    // deathlink
    settings = 
    {
        deathLink: global.AP_deathLink
    }
    setting_json = json_stringify(settings);
    var file = file_text_open_write(global.AP_multiworld + "/settings.json");
    file_text_write_string(file, setting_json);
    file_text_close(file);
}

function AP_read_settings_file()
{
    var file = file_text_open_read("ap_settings.json");
    var content = file_text_read_string(file);
    ap_settings_struct = -1;
    
    if (content != -1)
        ap_settings_struct = json_parse(content);
    
    return ap_settings_struct;
}

function AP_connect()
{
    if (AP_isAuthenticated())
        AP_disconnect();
    
    global.AP_isAuthenticated = 0;
    global.AP_socket = network_create_socket(ws);
    var APgame = "DELTARUNE";
    var tags = ["AP"]
    if(global.AP_deathLink)
        array_insert(tags, 1, "DeathLink")
    var _contents = 
    {
        cmd: "Connect",
        password: "",
        game: APgame,
        name: global.AP_name,
        uuid: UnknownEnum.Value_999999,
        items_handling: UnknownEnum.Value_7,
        tags: tags,
        version: 
        {
            class: "Version",
            major: global.AP_version[0],
            minor: global.AP_version[1],
            build: global.AP_version[2]
        }
    };
    var arr = [_contents];
    aa = json_stringify(arr);
    isConnected = network_connect_raw(global.AP_socket, global.AP_server, global.AP_port);
    buffer = buffer_create(string_byte_length(aa), buffer_fixed, 1);
    buffer_seek(buffer, buffer_seek_start, 0);
    buffer_write(buffer, buffer_text, aa);
    network_send_raw(global.AP_socket, buffer, buffer_tell(buffer), 2);
}

function AP_disconnect()
{
    if (global.AP_socket != -1)
    {
        global.AP_isAuthenticated = -1;
        network_destroy(global.AP_socket);
        global.AP_socket = -1;
    }
}

function AP_isAuthenticated()
{
    if (global.AP_isAuthenticated == 2)
        return true;
    
    return false;
}

function AP_sendLocation(arg0)
{
    if (!AP_isAuthenticated())
        exit;
    
    var _contents = 
    {
        cmd: "LocationChecks"
    };

    if (is_array(arg0))
        _contents.locations = arg0;
    else
        _contents.locations = [arg0];

    var arr = [_contents];
    location = json_stringify(arr);
    var buffer = buffer_create(string_byte_length(aa), buffer_fixed, 1);
    buffer_seek(buffer, buffer_seek_start, 0);
    buffer_write(buffer, buffer_text, location);
    network_send_raw(global.AP_socket, buffer, buffer_tell(buffer), 2);
}

function AP_sendHint(arg0)
{
    if (!AP_isAuthenticated())
        exit;

    var _contents =
    {
        cmd: "CreateHints"   
    };

    if (is_array(arg0))
        _contents.locations = arg0;
    else
        _contents.locations = [arg0];

    var arr = [_contents];
    location = json_stringify(arr);
    var buffer = buffer_create(string_byte_length(aa), buffer_fixed, 1);
    buffer_seek(buffer, buffer_seek_start, 0);
    buffer_write(buffer, buffer_text, location);
    network_send_raw(global.AP_socket, buffer, buffer_tell(buffer), 2);
}

/// UPDATE TAGS

function AP_updateTags(arg0){
    if (!AP_isAuthenticated())
        exit;

    var tags = ["AP"]
    if(global.AP_deathLink)
        array_insert(tags, 1, "DeathLink")
    var _contents = 
    {
        cmd: "ConnectUpdate",
        items_handling: 0,
        tags: tags
    };
    var arr = [_contents];
    location = json_stringify(arr);
    var buffer = buffer_create(string_byte_length(aa), buffer_fixed, 1);
    buffer_seek(buffer, buffer_seek_start, 0);
    buffer_write(buffer, buffer_text, location);
    network_send_raw(global.AP_socket, buffer, buffer_tell(buffer), 2);
}

enum UnknownEnum
{
    Value_7 = 7,
    Value_999999 = 999999
}
