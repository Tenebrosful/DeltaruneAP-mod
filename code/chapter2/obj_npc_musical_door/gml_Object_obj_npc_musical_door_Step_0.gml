/// PATCH

/// REPLACE
    with (kknpc)
        instance_destroy();
/// CODE
    instance_deactivate_object(kknpc);
/// END

/// REPLACE
    kknpc = instance_create(355, 113, obj_npc_room_animated);
    kknpc.sprite_index = spr_npc_kk;
/// CODE
    instance_activate_object(kknpc);
/// END

/// REPLACE
    audio_sound_gain(global.currentsong[1], 0, 500);
/// CODE
    if (global.AP_ost_shuffle)
    {
        audio_sound_gain(global.currentsong[1], 0, 500);
        audio_sound_gain(global.cyber_shuffled_music[1], 0, 500);
    }
    else
        audio_sound_gain(global.currentsong[1], 0, 500);
/// END

/// REPLACE
    audio_sound_gain(global.currentsong[1], 1, 500);
/// CODE
    if (global.AP_ost_shuffle)
    {
        audio_sound_gain(global.currentsong[1], 0, 500);
        audio_sound_gain(global.cyber_shuffled_music[1], 1, 500);
    }
    else
        audio_sound_gain(global.currentsong[1], 1, 500);
/// END