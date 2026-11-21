/// PATCH

/// REPLACE
snd_stop(global.batmusic[1]);
global.batmusic[0] = snd_init("Flowerman_Arrangement.ogg");
global.batmusic[1] = mus_loop_ext(global.batmusic[0], 1, 1);
/// CODE
snd_stop(global.batmusic[1]);
snd_stop(global.AP_music[1]);
global.batmusic[0] = snd_init("Flowerman_Arrangement.ogg", false);

if (global.AP_ost_shuffle)
{
    global.batmusic[1] = mus_loop_ext(global.batmusic[0], 0, 1);
    global.AP_music[0] = snd_init("Flowerman_Arrangement.ogg");
    global.AP_music[1] = mus_loop_ext(global.AP_music[0], 1, 1);
}
else
{
    global.batmusic[1] = mus_loop_ext(global.batmusic[0], 1, 1);
}
/// END