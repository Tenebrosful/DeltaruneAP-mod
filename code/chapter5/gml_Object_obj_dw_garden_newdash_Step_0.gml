/// PATCH

/// REPLACE
if (con == 0)
{
    if (global.flag[netskie_encounterflag] == 1)
/// CODE

if (con == 6)
{
    if (global.flag[netskie_encounterflag] < 1)
        global.flag[netskie_encounterflag] = 1;
    
    add_bottom_chest();
    con = 7;
}

if (con == 0)
{
    if (global.flag[netskie_encounterflag] >= 1)
/// END
