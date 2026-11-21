/// PATCH

/// REPLACE
if (play_song)
{
    if (!snd_is_playing(global.currentsong[1]))
    {
        global.currentsong[0] = snd_init(song_file);
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, pitch);
    }
}
/// CODE
if (play_song)
{
    if (global.AP_ost_shuffle && !scr_sideb_active() && song_file == "festival.ogg")
    {
        if (!snd_is_playing(global.currentsong[1]))
        {
            global.currentsong[0] = snd_init(song_file, false);
            global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0, pitch);
        }

        if (global.AP_ost_shuffle && !snd_is_playing(global.AP_music[1]))
        {
            global.AP_music[0] = snd_init(song_file);
            global.AP_music[1] = mus_loop_ext(global.AP_music[0], 1, pitch);
        }
    }
    else
    {
        if (!snd_is_playing(global.currentsong[1]))
        {
            global.currentsong[0] = snd_init(song_file);
            global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, pitch);
        }
    }
}
/// END