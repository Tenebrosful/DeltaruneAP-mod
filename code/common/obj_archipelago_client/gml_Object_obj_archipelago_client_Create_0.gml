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
global.AP_deathLink = 0;
global.AP_multiworld = 0;
global.AP_color = 
{
    filler: 16776960,
    progression: 8388736,
    useful: 16711680,
    trap: 255,
    useful_progression: 65535
};
global.AP_item_offset =
{
    keyitem: 10000,
    armor: 20000,
    weapon: 30000,
    money: 40000,
    macguffin: 70000,
    ch3_points: 80000,
    chapter_unlock: 90000
};

for (var i = 1; i <= 4; i++)
    global.AP_chapter[i] = false;

step = 0;


event_user(0);

if (!file_exists("ap_settings.json"))
{
    ap_settings_struct = 
    {
        server: "archipelago.gg",
        port: "38281",
        name: "Player",
        password: "",
        settings: 
        {
            colors: global.AP_color
        }
    };
    ap_setting_json = json_stringify(ap_settings_struct);
    var file = file_text_open_write("ap_settings.json");
    file_text_write_string(file, ap_setting_json);
    file_text_close(file);
}

ap_settings = AP_read_settings_file();
global.AP_server = ap_settings.server;
global.AP_port = ap_settings.port;
global.AP_name = ap_settings.name;
global.AP_password = ap_settings.password;
global.AP_colors = ap_settings.settings.colors;
