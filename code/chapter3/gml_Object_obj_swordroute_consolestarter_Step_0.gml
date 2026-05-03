/// PATCH

/// REPLACE
        if (havecontroller)
        {
            con = 12;
/// CODE
        if (havecontroller)
        {
            con = 12;
            
            if (global.flag[1176] == 0)
                global.flag[1176] = 1;
/// END

/// REPLACE
if (con == 120)
    room_goto(roomtogoto);
/// CODE
if (con == 120)
{
    room_goto(roomtogoto);
    global.customflags[29] = 1;
}
/// END