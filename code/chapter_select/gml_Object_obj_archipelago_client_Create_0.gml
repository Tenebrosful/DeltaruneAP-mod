/// IMPORT

persistent = 1;
wss = 7;
ws = 6;
global.AP_version = ["1", "2", "2"];
global.AP_isAuthenticated = -1;
global.AP_socket = -1;
global.AP_name = "Player";
global.AP_server = "127.0.0.1";
global.AP_port = 38281;
global.AP_password = "";
global.AP_secure = false;
global.AP_connect_deadline = 15;

for (var i = 1; i <= 4; i++)
    global.AP_chapter[i] = false;

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

event_user(0);

if (!file_exists("ap_settings.json"))
{
    ap_settings_struct = 
    {
        server: "archipelago.gg",
        port: "38281",
        name: "Player",
        password: ""
    };
    ap_setting_json = json_stringify(ap_settings_struct);
    AP_write_settings_file(ap_setting_json);
}

ap_settings = AP_read_settings_file();
global.AP_server = ap_settings.server;
global.AP_port = ap_settings.port;
global.AP_name = ap_settings.name;
global.AP_password = ap_settings.password;
