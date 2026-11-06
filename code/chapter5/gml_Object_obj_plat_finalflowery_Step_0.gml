/// PATCH

/// AFTER
            snd_volume(global.batmusic[1], 0, 120);
/// CODE
            snd_volume(global.AP_music[1], 0, 120);
/// END

/// REPLACE
            snd_free(global.batmusic[0]);
            overlay = instance_create(0, 0, obj_marker);
/// CODE
            snd_free(global.batmusic[0]);
            mus_volume(global.AP_music[1], 0, 1);
            snd_free(global.AP_music[0]);
            overlay = instance_create(0, 0, obj_marker);
/// END

/// REPLACE
            snd_free(global.batmusic[0]);
            scr_lerpvar("hspeed", 8, 0, 40, 3, "out");
/// CODE
            snd_free(global.batmusic[0]);
            mus_volume(global.AP_music[1], 0, 1);
            snd_free(global.AP_music[0]);
            scr_lerpvar("hspeed", 8, 0, 40, 3, "out");
/// END