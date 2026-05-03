/// PATCH

/// REPLACE
if (!snd_is_playing(global.currentsong[1]))
{
    global.currentsong[0] = snd_init("baci_perugina.ogg");
    global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.5, 1);
}

var wall_npcs = instance_create(0, 0, obj_dw_ch3_curtainroomnpc);
/// CODE
if (!snd_is_playing(global.currentsong[1]))
{
    if (global.plot <= 70)
    {
        global.currentsong[0] = snd_init("baci_perugina.ogg");
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.5, 1);
    }
    else
    {
        global.currentsong[0] = snd_init("tv_world.ogg");
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.5, 1);
    }
}

if (global.plot <= 70)
    var wall_npcs = instance_create(0, 0, obj_dw_ch3_curtainroomnpc);
/// END