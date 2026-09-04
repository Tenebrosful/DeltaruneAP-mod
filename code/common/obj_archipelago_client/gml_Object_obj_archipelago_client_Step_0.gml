/// IMPORT
if (global.AP_connection_state == global.AP_ENUM_CONNECTION_STATE.TRYING_TO_CONNECT)
{
    step++;
    
    if (step > global.AP_connect_deadline)
    {
        show_debug_message("Connection timed out");
        global.AP_connection_errors = "Connection timed out after " + string(global.AP_connect_deadline/30) + "s";
        obj_archipelago_client.AP_disconnect();
        global.AP_connection_state = global.AP_ENUM_CONNECTION_STATE.ERROR_TIMEOUT;
        step = 0;
    }
}
else if (global.AP_connection_state == global.AP_ENUM_CONNECTION_STATE.READY)
{
    step++;

    if (step > global.AP_heartbeat_timer)
    {
        AP_heartbeat();
        if (variable_global_exists("chapter"))
        {
            global.AP_sync = AP_verify_sync();
        }
        step = 0;
    }
#if !CHAPTER_SELECT

    if (global.AP_ost_shuffle)
    {
        if (mus_get_name() == "rhythm_3rd_sanctuary_guit.ogg" || mus_get_name() == "rhythm_3rd_sanctuary_noguit.ogg")
        {
            if (snd_is_playing(global.currentsong[1]))
            {
                if (audio_sound_get_track_position(global.currentsong[1]) >= 131)
                {
                    audio_sound_set_track_position(global.currentsong[1], 0);
                }
            }
        }
    }
#endif
}
