/// PATCH

/// AFTER
    snd_free_all();
    instance_create(0, 0, obj_persistentfadein);
    room_goto(room_lw_church_entrance);
/// CODE
    AP_sendLocation(208);
/// END