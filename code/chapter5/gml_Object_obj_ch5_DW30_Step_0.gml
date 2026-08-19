/// PATCH

/// REPLACE
if (con == 0)
{
    con = 1;
    alarm[0] = 30;
    scr_miniface_init_flowers();
}
/// CODE
if (con == 0)
{
    con = 1;
    scr_miniface_init_flowers();
}

if (con == 1)
{
    con = 1.1;
    global.choice = -1;
    global.choicemsg[0] = "#Skip";
    global.choicemsg[1] = "#Watch";
    global.choicemsg[2] = "";
    global.choicemsg[3] = "";
    msgset(0, "\\C2 ");
    d_make();
}

if (con == 1.1 && global.choice != -1)
{
    k_d();
    
    if (global.choice == 0)
    {
        AP_sendLocation(344);
        room_goto(room_cc_fountain);
    }
    else
    {
        con = 2;
    }
}
/// END