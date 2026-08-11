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
if (con == 0 || con == 99999)
/// CODE
if (con == 0 || con == 99999 || con == 12 || con == 13)
/// END

/// REPLACE
if (con == 12)
{
}
/// CODE
if (con == 12)
{
    con = 13;
    scr_speaker("no_name");
    msgset(0, "* (You should probably unlock \\cBKris\\cW before playing this.)/%");
    d_make();
}

if (con == 13 && !d_ex())
{
    global.interact = 0;
    con = 0;
}
/// END
