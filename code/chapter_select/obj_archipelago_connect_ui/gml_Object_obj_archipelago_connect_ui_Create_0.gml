/// IMPORT
choice = 0;
init = false;
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
mode = "normal"
mode_dice = irandom(99)

if (mode_dice < 10)
    mode = "weird";
else if (mode_dice < 20)
    mode = "dog"
else if (mode_dice < 30)
    mode = "kris"

musics = [
    "hip_shop.ogg",
    "town_day.ogg",
    "shop1.ogg",
    "castletown.ogg",
    "castle_funk_long.ogg",
    "greenroom_detune.ogg",
    "shop_3.ogg",
    "field_of_hopes_insaneintherain_loop.ogg",
    "flower_cafe.ogg",
    "flowery_diner_romantic.ogg",
    "festival.ogg",
    "festival_after.ogg",
    "flowery_iog_extended.ogg"
];
weird_musics = ["basement.ogg", "berdly_battle_heartbeat_true.ogg", "ch5_weird_monologue_deep.ogg", "cybercity_alt.ogg", "happy_town.ogg"]
dog_musics = ["dog_balloon.ogg", "dogcheck.ogg", "dogroom.ogg", "alarm_titlescreen.ogg", "annoying_prophecy.ogg", "inukuma_wip.ogg"]
kris_musics = [
    "kris_piano_lancer_waltz.ogg",
    "kris_piano_last_prophecy.ogg",
    "kris_piano_lower.ogg",
    "kris_piano_prophecy.ogg",
    "kris_piano_quiz.ogg",
    "kris_piano_rouxls.ogg",
    "kris_piano_sevenfour.ogg",
    "kris_piano_shop.ogg",
    "kris_piano_waitingroom.ogg",
]

music_name = ""
loop = true;
switch(mode)
{
    case "weird":
        music_name = weird_musics[irandom(array_length(weird_musics) - 1)]
        break;
    case "dog":
        music_name = dog_musics[irandom(array_length(dog_musics) - 1)]
        break;
    case "kris":
        music_name = kris_musics[irandom(array_length(kris_musics) - 1)]
        kris_musics_assets = {}

        for (var i = 0; i < array_length(kris_musics); i++)
        {
            variable_struct_set(kris_musics_assets, kris_musics[i], audio_create_stream("mus/" + kris_musics[i]))
        }

        loop = false;
        break;
    case "normal":
    default:
        music_name = musics[irandom(array_length(musics) - 1)]
        break;

}

if (mode == "kris")
{
    my_music = variable_struct_get(kris_musics_assets, music_name);
}
else
{
    my_music = audio_create_stream("mus/" + music_name);
}
audio_play_sound(my_music, 2, loop);
audio_sound_gain(my_music, 0.5, 0);
credits = ["ARCHIPELAGO CREDITS:", " ", "Mewlif (Modding)", "theemeraldsword85 (Modding)", "Tenebrosful (Porting, Modding)", "Deadzi (Bug Fixing, Modding)", "Vintagix (In-Game AP Client, Modding)", "Charaster (Sprites)"];
connected = "> Connecting...";
fadein = instance_create_depth(0, 0, 1, obj_fadein);
fadein.depth = 1;
fadein.x = -100;
fadein.y = -100;
page = 0;
current = "";
host_or_port_changed = false

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

function init_visual()
{
    switch (mode)
    {
        case "kris":
            load_kris_mode();
            break;
        case "normal":
        default:
            load_normal_mode();
            break;
    }
}

function load_normal_mode()
{
    background = instance_create_depth(0, 0, 1000, obj_archipelago_dummy,
    {
        sprite_index: bg_archipelago,
        image_index: 0,
        image_xscale: 2,
        image_yscale: 3
    });
    

    dummy_kris = instance_create_depth(608, 144, -10, obj_archipelago_dummy, 
    {
        sprite_index: spr_kris_sit,
        image_speed: 0.1,
        image_xscale: -3,
        image_yscale: 3
    });
    dummy_susie = instance_create_depth(576, 208, -15, obj_archipelago_dummy, 
    {
        sprite_index: spr_susie_sit,
        image_speed: 0.1,
        image_xscale: -3,
        image_yscale: 3
    });
}

function load_kris_mode()
{
    background = instance_create_depth(0, 0, 1000, obj_archipelago_dummy,
    {
        sprite_index: bg_archipelago,
        image_index: 1,
        image_xscale: 1,
        image_yscale: 1
    });

    dummy_kris = instance_create_depth(400, 204, -10, obj_archipelago_dummy,
    {
        sprite_index: spr_kris_piano_full,
        image_xscale: 2,
        image_yscale: 2,
        image_speed: 0.8
    });

    dummy_cage = instance_create_depth(320, 384, -10, obj_archipelago_dummy,
    {
        sprite_index: spr_kris_room_cage,
        image_xscale: 2,
        image_yscale: 2,
    });

    dummy_heart = instance_create_depth(330, 410, -15, obj_archipelago_dummy,
    {
        sprite_index: spr_heart,
        image_xscale: 1.5,
        image_yscale: 1.5,
    });

    dummy_cage = instance_create_depth(320, 384, -20, obj_archipelago_dummy,
    {
        sprite_index: spr_kris_room_cage_cover,
        image_xscale: 2,
        image_yscale: 2,
    });
}

init_visual();