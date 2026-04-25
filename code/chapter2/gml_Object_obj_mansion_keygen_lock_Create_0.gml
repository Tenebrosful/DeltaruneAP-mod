/// IMPORT
myinteract = 0;
image_speed = 10;
scr_depth();
con = 0;
fade_timer = 0;

if (room == room_dw_mansion_east_4f_b)
{
    if (global.customflags[16] == 1 && global.AP_macguffin_required[1] >= global.MacGuffin_count)
        instance_destroy();
}
else if (global.flag[309] >= 4)
{
    instance_destroy();
}

unlocked = false;