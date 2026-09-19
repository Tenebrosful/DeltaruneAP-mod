/// PATCH

/// REPLACE
        if (global.flag[542] == 0)
            instance_create(560, 160, obj_chaseenemy);
/// CODE
        instance_create(560, 160, obj_chaseenemy);
/// END

// Totally copied from NERS' Bingo mod
/// REPLACE
image_alpha = 0;
/// CODE
image_alpha = (room == room_dw_mansion_east_1f_secret);
/// END