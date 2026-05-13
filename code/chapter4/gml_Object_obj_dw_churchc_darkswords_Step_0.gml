/// PATCH

/// AFTER
            scr_maincharacters_actors();
            c_msgruncheck(true);
            c_speaker("ralsei");
/// CODE
            global.customflags[29] = 1;
/// END

/// AFTER
            scr_caterpillar_interpolate();
            snd_free_all();
            global.interact = 0;
/// CODE
            global.customflags[29] = 0;
/// END