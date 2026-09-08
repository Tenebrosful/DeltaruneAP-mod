/// IMPORT

if (looptarget == -1 || looptime == -1)
    exit;

if (global.AP_ost_shuffle)
{
    if (snd_is_playing(looptarget))
    {
        if (audio_sound_get_track_position(looptarget) >= looptime)
        {
            audio_sound_set_track_position(looptarget, 0);
        }
    }
}