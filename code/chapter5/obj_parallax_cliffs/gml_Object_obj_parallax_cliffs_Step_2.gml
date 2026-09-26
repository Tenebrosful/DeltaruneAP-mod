/// PATCH

/// REPLACE
    if (musname == "cliff.ogg")
    {
        trackpos = audio_sound_get_track_position(global.currentsong[1]);
        
        if (trackpos >= 0 && trackpos < track_segment_1 && suny > music_sun_y_min)
            suny = lerp(suny, music_sun_y_min, music_sun_lerpspeed);
        else if (trackpos >= track_segment_1 && trackpos < track_segment_2 && suny < 1)
            suny = lerp(suny, 1, music_sun_lerpspeed);
        else if (trackpos >= track_segment_2 && trackpos < track_segment_3 && suny > music_sun_y_min)
            suny = lerp(suny, music_sun_y_min, music_sun_lerpspeed);
        else if (trackpos >= track_segment_3 && suny < 1)
            suny = lerp(suny, 1, music_sun_lerpspeed);
        
        pal_index = 1 - suny;
    }
    else if (musname == "rudebuster_boss.ogg" || musname == "meeting_flower.ogg" || musname == "Flowerman_Arrangement.ogg")
    {
        suny = lerp(suny, 1, music_sun_lerpspeed);
        pal_index = 1 - suny;
    }
    else
    {
        suny = lerp(suny, music_sun_y_min, music_sun_lerpspeed);
        pal_index = 1 - suny;
    }
/// CODE
    if (global.AP_ost_mapping)
    {
        if (musname == variable_struct_get(global.AP_ost_mapping, "cliff.ogg") || musname == variable_struct_get(global.AP_ost_mapping, "rudebuster_boss.ogg") || musname == variable_struct_get(global.AP_ost_mapping, "meeting_flower.ogg") || musname == variable_struct_get(global.AP_ost_mapping, "Flowerman_Arrangement.ogg"))
        {
            suny = lerp(suny, 1, music_sun_lerpspeed);
            pal_index = 1 - suny;
        }
        else
        {
            suny = lerp(suny, music_sun_y_min, music_sun_lerpspeed);
            pal_index = 1 - suny;
        }
    }
    else
    {
        if (musname == "cliff.ogg")
        {
            trackpos = audio_sound_get_track_position(global.currentsong[1]);

            if (trackpos >= 0 && trackpos < track_segment_1 && suny > music_sun_y_min)
                suny = lerp(suny, music_sun_y_min, music_sun_lerpspeed);
            else if (trackpos >= track_segment_1 && trackpos < track_segment_2 && suny < 1)
                suny = lerp(suny, 1, music_sun_lerpspeed);
            else if (trackpos >= track_segment_2 && trackpos < track_segment_3 && suny > music_sun_y_min)
                suny = lerp(suny, music_sun_y_min, music_sun_lerpspeed);
            else if (trackpos >= track_segment_3 && suny < 1)
                suny = lerp(suny, 1, music_sun_lerpspeed);

            pal_index = 1 - suny;
        }
        else if (musname == "rudebuster_boss.ogg" || musname == "meeting_flower.ogg" || musname == "Flowerman_Arrangement.ogg")
        {
            suny = lerp(suny, 1, music_sun_lerpspeed);
            pal_index = 1 - suny;
        }
        else
        {
            suny = lerp(suny, music_sun_y_min, music_sun_lerpspeed);
            pal_index = 1 - suny;
        }
    }
/// END