/// IMPORT
if (con == 0 && global.interact == 0 && bottom == 1)
{
    global.interact = 1;
    
    if (scr_havechar(4))
        con = 8;
    else
        con = 10;
}
