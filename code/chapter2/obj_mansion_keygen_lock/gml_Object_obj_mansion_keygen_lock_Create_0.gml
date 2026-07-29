/// IMPORT
myinteract = 0;
image_speed = 10;
scr_depth();
con = 0;
fade_timer = 0;

if (room == room_dw_mansion_east_4f_b)
{
    if (global.customflags[global.custom_flags_indexes.used_keygen] || (global.AP_macguffin_required[global.chapter - 1] == 0 && (global.AP_current_route != global.AP_ENUM_CHOSEN_ROUTE.ALL_RECRUITS || (global.AP_current_route == global.AP_ENUM_CHOSEN_ROUTE.ALL_RECRUITS && AP_all_recruits_acquired()))))
        instance_destroy();
}
else if (global.flag[309] >= 4 && scr_keyitemcheck(12))
{
    instance_destroy();
}

unlocked = false;
