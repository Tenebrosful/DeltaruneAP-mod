/// PATCH

/// REPLACE
        with (obj_astream)
        {
            var found = string_pos("cowboy", songname);
            
            if (found)
                alreadyplaying = true;
        }
/// CODE
        with (obj_astream)
        {
            if (global.AP_ost_shuffle)
                var found = (songname == variable_struct_get(global.AP_ost_mapping, "meeting_flower_cowboy.ogg"));
            else
                var found = string_pos("cowboy", songname);
            
            if (found)
                alreadyplaying = true;
        }
/// END