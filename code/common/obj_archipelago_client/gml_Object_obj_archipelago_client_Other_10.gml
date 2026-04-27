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
        deathLink: global.AP_deathlink
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
    if (global.AP_server == "archipelago.gg")
        global.AP_secure = true;
    else
        global.AP_secure = false;

    if (global.AP_secure == true && global.AP_socket != network_create_socket(wss))
        global.AP_socket = network_create_socket(wss);

    if (global.AP_secure == false && global.AP_socket != network_create_socket(ws))
        global.AP_socket = network_create_socket(ws);

    var APgame = "DELTARUNE";
    var tags = ["AP"]
    if(global.AP_deathlink)
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

    isConnected = network_connect_raw(global.AP_socket, global.AP_server, global.AP_port);
    
    AP_internal_send_packet(_contents);
}

function AP_disconnect()
{
    if (global.AP_socket != -1)
    {
        global.AP_isAuthenticated = -1;
        network_destroy(global.AP_socket);
        global.AP_socket = -1;
        global.AP_item_from_server = [];
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
    
    for (var i = 0; i < array_length(_contents.locations); i++)
    {
        _contents.locations[i] = int64(_contents.locations[i]);
    }

    AP_internal_send_packet(_contents);
}

function AP_completeChapter(chapter_number)
{
    if (!AP_isAuthenticated())
        exit;

    var _contents = 
    {
        cmd: "Set",
        key: string(global.AP_slot) + "_chapter_" + string(chapter_number) + "_completed",
        default: 0,
        want_reply: true,
        operations: [{operation: "replace", value: 1}]
    };

    AP_internal_send_packet(_contents);
}

function AP_getChapterCompletion()
{
    if (!AP_isAuthenticated())
        exit;

    var _contents = 
    {
        cmd: "Get",
        keys: global.AP_completed_chapters_keys
    };

    AP_internal_send_packet(_contents);
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

    for (var i = 0; i < array_length(_contents.locations); i++)
    {
        _contents.locations[i] = int64(_contents.locations[i]);
    }

    AP_internal_send_packet(_contents);
}

function AP_sendDeathlink(text)
{
    if (!AP_isAuthenticated())
        exit;

    var _contents =
    {
        cmd: "Bounce",
        tags: ["DeathLink"],
        data: {
            time: int64(current_time),
            source: global.AP_name,
            cause: text
        }
    };

    AP_internal_send_packet(_contents);
}

function AP_sendLocationScouts(ids)
{
    if (!AP_isAuthenticated())
        exit;

    var _contents =
    {
        cmd: "LocationScouts",
        locations: ids
    };

    for (var i = 0; i < array_length(_contents.locations); i++)
    {
        _contents.locations[i] = int64(_contents.locations[i]);
    }

    AP_internal_send_packet(_contents);
}

function AP_getDataPackage(games)
{
    if (!AP_isAuthenticated())
        exit;

    var _contents =
    {
        cmd: "GetDataPackage",
        games: games
    };
    AP_internal_send_packet(_contents);
}

/// UPDATE TAGS

function AP_updateTags(){
    if (!AP_isAuthenticated())
        exit;

    var tags = ["AP", "NoText"];
    if(global.AP_deathlink)
        array_insert(tags, 1, "DeathLink")
    var _contents = 
    {
        cmd: "ConnectUpdate",
        items_handling: 7,
        tags: tags
    };
    AP_internal_send_packet(_contents);
}

function AP_internal_send_packet(content)
{
    var arr = [content];
    data = json_stringify(arr);
    var buffer = buffer_create(string_byte_length(data), buffer_fixed, 1);
    buffer_seek(buffer, buffer_seek_start, 0);
    buffer_write(buffer, buffer_text, data);
    network_send_raw(global.AP_socket, buffer, buffer_tell(buffer), 2);
}

enum UnknownEnum
{
    Value_7 = 7,
    Value_999999 = 999999
}
