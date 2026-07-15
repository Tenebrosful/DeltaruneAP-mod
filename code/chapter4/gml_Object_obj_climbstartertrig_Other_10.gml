/// IMPORT
if (global.interact == 0 && !i_ex(obj_climb_kris) && obj_mainchara.visible == true)
{
    if (myinteract == 1)
    {
        if (global.flag[23] == 1 || global.plot >= 180)
        {
            if (((global.customflags[global.custom_flags_indexes.accepted_dark_sanctuary_skip] == 1 || global.maxhp[2] > 0) && scr_havechar(3)) || room != room_dw_church_intropiano)
            {
                if (global.plot >= 160 || room != room_dw_church_ripplepuzzle_postgers)
                {
                    if (global.customflags[global.custom_flags_indexes.got_jackenstein_gift] == true || room != room_dw_church_jackenstein)
                    {
                        global.interact = 1;
                        myinteract = 3;
                        exit;
                    }
                }
            }
        }
    }
    
    global.interact = 1;
    myinteract = 400;
}
