/// PATCH

/// AFTER
border_val = 0;
/// CODE
if (scr_flag_get(1628) == 1)
{
    global.facing = 0;
    global.interact = 0;
    instance_destroy(obj_dw_leave);
    scr_flag_set(1628, 0);
    scr_getchar(2);
    scr_getchar(3);
}
/// END