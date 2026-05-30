/// IMPORT
persistent = 1;
wss = 7;
ws = 6;

global.AP_ENUM_CHOSEN_ROUTE = {
    UNKNOWN: -1,
    ALL_RECRUITS: 0,
    WEIRD_ROUTE: 1,
    ALL_ROUTES: 2,
    NEUTRAL_ROUTE: 3
}

global.AP_ENUM_RANDOMIZE_CHAPTER = {
    IN_ORDER: 0,
    RANDOMIZED: 1,
    ALL_UNLOCKED: 2
}

global.AP_version = ["1", "2", "2"];
global.AP_isAuthenticated = -1;
global.AP_heartbeat_timer = 10 * 30;
global.AP_socket = -1;
global.AP_name = "Player";
global.AP_slot = 0;
global.AP_player_names = ["Archipelago"];
global.AP_slotinfo = ["Archipelago"];
global.AP_scouting_raw = undefined;
global.AP_data_package_raw = undefined;
global.AP_max_chapter = 4;
global.AP_server = "127.0.0.1";
global.AP_port = 38281;
global.AP_password = "";
global.AP_secure = false;
global.AP_connect_deadline = 15;
global.AP_item_from_server = undefined;
global.AP_game_start_post_connexion_done = false;
global.AP_route = global.AP_ENUM_CHOSEN_ROUTE.UNKNOWN;
global.AP_skip_item_textboxes = false;
global.AP_no_mantle = false;
global.AP_better_odds = false;
global.AP_deathlink = false;
global.AP_deathlink_protected = false;
global.AP_deathlink_infos = {source: undefined, cause: undefined, time: undefined};
global.AP_secret_bosses_mandatory = false;
global.AP_unlock_fun_gang_actions = true;
global.AP_remove_starting_equipment = true;
global.AP_include_unused_items = 0;
global.AP_unlock_characters = false;
global.AP_unlock_kris = false;
global.AP_macguffin_required = [];
global.AP_completed_chapters_keys = [];
global.AP_completed_chapters = [];
global.AP_include_chapters = [];
global.AP_balancing = false;
global.AP_multiworld = 0;
global.AP_all_locations_ids = [];
global.AP_colors = 
{
    filler: "00FFFF",
    progression: "800080",
    useful: "0000FF",
    trap: "FF0000",
    useful_progression: "FFFF00"
};
global.AP_item_offset =
{
    keyitem: 10000,
    armor: 20000,
    weapon: 30000,
    money: 40000,
    progressive: 50000,
    character_unlock: 60000,
    macguffin: 70000,
    ch3_points: 80000,
    chapter_unlock: 90000,
    other_unlock: 100000, // Currently fun gang actions unlock
};
global.AP_other_games = []
global.AP_progressive_weapons = {
    kris: true,
    susie: true,
    ralsei: true,
    noelle: true,
}

for (var chapter = 1; chapter <= global.AP_max_chapter; chapter++)
{
    global.AP_chapter_unlocked[chapter - 1] = false;
    global.AP_completed_chapters[chapter - 1] = false;
    global.AP_include_chapters[chapter - 1] = false;
    global.AP_macguffin_required[chapter - 1] = 0;
}

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
            colors: global.AP_colors
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