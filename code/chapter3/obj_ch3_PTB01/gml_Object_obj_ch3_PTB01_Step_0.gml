/// PATCH

/// REPLACE
if (con == 0)
{
    con = 1;
    alarm[0] = 1;
    global.interact = 1;
    global.facing = 0;
}
/// CODE
if (con == 0)
{
    con = 1;
    global.interact = 1;
    global.facing = 0;
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
        con = 3;
        
        with (obj_mainchara)
        {
            x = 1170;
            y = 250;
            cutscene = false;
        }
        
        with (obj_darkener)
            instance_destroy();
        
        with (obj_tvturnoff_manager)
            instance_destroy();
    }
    else
    {
        con = 2;
        
        with (obj_darkener)
            instance_destroy();
        
        with (obj_tvturnoff_manager)
            instance_destroy();
    }
}
/// END