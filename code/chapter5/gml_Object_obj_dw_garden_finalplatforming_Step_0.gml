/// PATCH

/// REPLACE
        if (musname != "piano_ambience.ogg" && musname != "cliff_jump_ambience.ogg")
        {
            if (musname != "")
                snd_free(global.currentsong[0]);
            
            if (target.y > music_switch_y)
            {
                global.currentsong[0] = snd_init("piano_ambience.ogg");
            }
            else
            {
                global.currentsong[0] = snd_init("cliff_jump_ambience.ogg");
                music_state = 1;
            }
            
            global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 1);
        }
/// CODE
        if (global.AP_ost_shuffle)
        {
            if (musname != variable_struct_get(global.AP_ost_mapping, "piano_ambience.ogg") && musname != variable_struct_get(global.AP_ost_mapping,"cliff_jump_ambience.ogg"))
            {
                if (musname != "")
                    snd_free(global.currentsong[0]);

                if (target.y > music_switch_y)
                {
                    global.currentsong[0] = snd_init("piano_ambience.ogg");
                }
                else
                {
                    global.currentsong[0] = snd_init("cliff_jump_ambience.ogg");
                    music_state = 1;
                }

                global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 1);
            }
        }
        else
        {
            if (musname != "piano_ambience.ogg" && musname != "cliff_jump_ambience.ogg")
            {
                if (musname != "")
                    snd_free(global.currentsong[0]);

                if (target.y > music_switch_y)
                {
                    global.currentsong[0] = snd_init("piano_ambience.ogg");
                }
                else
                {
                    global.currentsong[0] = snd_init("cliff_jump_ambience.ogg");
                    music_state = 1;
                }

                global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 1);
            }
        }
/// END
