/// IMPORT
persistent = 1;
wss = 7; // DON'T CHANGE
ws = 6; // DON'T CHANGE
global.AP_version = ["1", "2", "2"];
// AP_isAuthenticated:
// Hasn't tried to auth: -1
// Is authenticating: 0
// Failed auth: 1
// Successfully auth: 2
global.AP_isAuthenticated = -1; 
global.AP_socket = -1;
global.AP_name = "Player";
global.AP_server = "127.0.0.1";
global.AP_port = 38281;
global.AP_password = "";
global.AP_secure = false;
global.AP_connect_deadline = 15;
step = 0;

if (global.AP_server == "archipelago.gg")
    global.AP_secure = true;
else
    global.AP_secure = false;

global.AP_isConnected = false;

if (global.AP_secure == true && global.AP_socket != network_create_socket(wss))
    global.AP_socket = network_create_socket(wss);

if (global.AP_secure == false && global.AP_socket != network_create_socket(ws))
    global.AP_socket = network_create_socket(ws);

// Connect to AP server
function AP_connect()
{
    global.AP_isAuthenticated = 0;
    AP_disconnect();
    global.AP_socket = network_create_socket(ws);
    var APgame = "DELTARUNE";
    var _contents = 
    {
        cmd: "Connect",
        password: "",
        game: APgame,
        name: global.AP_name,
        uuid: UnknownEnum.Value_999999,
        items_handling: UnknownEnum.Value_3,
        tags: [],
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

// Disconnect from AP server
function AP_disconnect()
{
    if (global.AP_socket != -1)
    {
        network_destroy(global.AP_socket);
        global.AP_socket = -1;
    }
}

function isAuthenticated()
{
    if (global.AP_isAuthenticated == 2)
        return true;
    
    return false;
}

enum UnknownEnum
{
    Value_3 = 3,
    Value_999999 = 999999
}
