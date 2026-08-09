/// IMPORT
if (global.plot >= 70 && global.plot < 120)
{
    scr_losechar();
    scr_setparty(0, 0, 1);
}

if (global.customflags[global.custom_flags_indexes.discovered_ch2_leave_dw])
    instance_destroy();
