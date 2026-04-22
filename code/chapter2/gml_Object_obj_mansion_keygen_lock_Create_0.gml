/// IMPORT
myinteract = 0;
image_speed = 10;
scr_depth();
con = 0;
fade_timer = 0;

if (room == room_dw_mansion_east_4f_b)
{
    if (global.customflags[16] == 1 || file_exists("ch3.route") || file_exists("ch4.route") || scr_ap_get_macguffin_amount() == 0)
        instance_destroy();
}
else if (global.flag[309] >= 4)
{
    instance_destroy();
}

unlocked = false;