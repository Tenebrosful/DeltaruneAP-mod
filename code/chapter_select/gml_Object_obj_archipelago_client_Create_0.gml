/// IMPORT

persistent = 1;
wss = 7;
ws = 6;
global.AP_version = ["1", "2", "2"];
global.AP_isAuthenticated = 0;
global.AP_socket = network_create_socket(ws);
global.AP_name = "Vintagix";
global.AP_server = "127.0.0.1";
global.AP_port = 38281;
global.AP_password = "";
global.AP_secure = false;
global.AP_lastPlayerSent = 0;
global.AP_lastItemSent = 0;

if (global.AP_server == "archipelago.gg")
    global.AP_secure = true;
else
    global.AP_secure = false;

global.AP_isConnected = false;
var APgame = "DELTARUNE";

if (global.AP_secure == true && global.AP_socket != network_create_socket(wss))
    global.AP_socket = network_create_socket(wss);

if (global.AP_secure == false && global.AP_socket != network_create_socket(ws))
    global.AP_socket = network_create_socket(ws);

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

enum UnknownEnum
{
    Value_3 = 3,
    Value_999999 = 999999
}
