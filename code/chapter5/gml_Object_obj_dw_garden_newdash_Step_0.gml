/// PATCH

/// REPLACE
if (con == 0)
{
    if (global.flag[netskie_encounterflag] == 1)
/// CODE

if (con == 6)
{
    if (scr_trigcheck("netskie") || scr_trigcheck_ext("netskied", 1662))
        add_bottom_chest();
    
    con = 7;
}

if (con == 0)
{
    if (global.flag[netskie_encounterflag] >= 1)
/// END
