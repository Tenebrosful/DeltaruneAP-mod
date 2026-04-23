/// IMPORT
choice = 0;
input_text = "";
edit = false;
host_text = "Host: " + string(global.AP_server);
port_text = "Port: " + string(global.AP_port);
slot_text = "Slot Name: " + string(global.AP_name);
password_text = "Password: " + string(global.AP_password);
max_choice = 4;
delete_timer = 0;
delete_start_delay = 10;
delete_repeat_rate = 2;
connect = false;
gap = 30;
outline_offset = 2;
y_align = 160;
x_align = 80;
randomise();
musics = ["hip_shop.ogg", "town_day.ogg", "shop1.ogg", "castletown.ogg", "castle_funk_long.ogg", "greenroom_detune.ogg"];
my_music = audio_create_stream("mus/" + musics[irandom(array_length(musics) - 1)]);
audio_play_sound(my_music, 2, true);
audio_sound_gain(my_music, 0.5, 0);
credits = ["ARCHIPELAGO CREDITS:", " ", "Mewlif (Modding)", "theemeraldsword85 (Modding)", "Tenebrosful (Porting, Modding)", "Deadzi (Bug Fixing, Modding)", "Vintagix (In-Game AP Client, Modding)", "Charaster (Sprites)"];
connected = "> Connecting...";
fadein = instance_create_depth(0, 0, 1, obj_fadein);
fadein.depth = 1;
fadein.x = -100;
fadein.y = -100;
page = 0;

function dec_to_hex(arg0, arg1 = 6)
{
    var hex = "";
    
    if (arg0 < 0)
        arg1 = max(arg1, ceil(logn(16, 2 * abs(arg0))));
    
    var dig = "0123456789ABCDEF";
    
    while (arg1-- || arg0)
    {
        hex = string_char_at(dig, (arg0 & 15) + 1) + hex;
        arg0 = arg0 >> 4;
    }
    
    return string_reverse(hex);
}

function hex_to_dec(arg0)
{
    var dec = 0;
    var dig = "0123456789ABCDEF";
    var len = string_length(arg0);
    
    for (var pos = 1; pos <= len; pos += 1)
        dec = (dec << 4) | (string_pos(string_char_at(arg0, pos), dig) - 1);
    
    return dec;
}

function string_reverse(arg0)
{
    var out = "";
    var i = string_length(arg0);
    
    while (i > 0)
    {
        out += string_char_at(arg0, i);
        i--;
    }
    
    return out;
}
